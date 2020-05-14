library(keras) # its default CPU-based installations of Keras and TensorFlow
library(readr)
library(reticulate)
#reticulate::use_python("~/Anaconda3/python.exe", required = TRUE)
reticulate::py_config()
numpy <- import("numpy", convert = TRUE)
numpy[["__path__"]]
# data1
# Here we load the dataset then create variables for our test and training data:
df = read.csv("D:/SEM 3/Data pre-processing/data1.csv") # Loading data
df = df[,c(-1,-28,-4,-5,-7,-8,-9,-10,-11,-14,-15,-16,-17,-18,-19,-20,-22,-23,-24)] # Remove column
data = as.matrix(df)
dimnames(data) = NULL
set.seed(1234)
index = sample(2,
               nrow(data),
               replace = TRUE,
               prob = c(0.75,0.25))
x_train = data[index == 1,-10]
class(x_train)
x_test = data[index == 2,-10]
#x_test_actual = data[index == 1,8]
y_test_actual = data[index == 2,10]

#  y data is an integer vector with values ranging from 0 to 9. To 
# prepare this data for training we one-hot encode the vectors into binary 
# class matrices using the Keras to_categorical() function
y_train = to_categorical(data[index==1,10])
y_test = to_categorical(data[index==2,10])


# apply mean on our train data
mean_train = apply(x_train,
                   2,
                   mean)

# apply standard deviation on test data
std_train = apply(x_train,
                   2,
                   sd)


x_train = scale(x_train,
                center = mean_train,
                scale = std_train)
x_test = scale(x_test,
               center = mean_train,
               scale = std_train)

#rescale train and test
x_train = array_reshape(x_train, c(nrow(x_train),9))
x_test = array_reshape(x_test, c(nrow(x_test),9))

# The core data structure of Keras is a model, a way to organize layers. 
# The simplest type of model is the sequential model, a linear stack of layers.
# We begin by creating a sequential model and then adding layers using the pipe (%>%) operator
model <- keras_model_sequential() 
model %>% 
  layer_dense(units = 256, activation = "relu", input_shape = c(9)) %>% 
  layer_dropout(rate = 0.4) %>% 
  layer_dense(units = 128, activation = "relu") %>%
  layer_dropout(rate = 0.3) %>%
  layer_dense(units = 3, activation = "softmax")
summary(model) #  details of the model

# compile the model with appropriate loss function, optimizer, and metrics
model %>% compile(
  loss = "categorical_crossentropy",
  optimizer = "adam",
  metrics = c("accuracy")
)

# Use the fit() function to train the model for 10 epochs using batches of 128 images
history <- model %>% 
  fit(x_train, 
      y_train, 
      epochs = 10, 
      batch_size = 128, 
      validation_split = 0.2)

# The history object returned by fit() includes loss and accuracy metrics which we can plot
plot(history)

# Evaluate the model's performance on the test data
model %>%
  evaluate(x_test,
           y_test)

# Generate predictions on new data
pred = model %>%
  predict_classes(x_test)

table(Predicted = pred,
      Actual = y_test_actual)


################################################# data2  ################################
# Here we load the dataset then create variables for our test and training data:
df = read.csv("D:/SEM 3/Data pre-processing/data2.csv") # Loading data
df = df[,c(-1,-28,-4,-5,-7,-8,-9,-10,-11,-14,-15,-16,-17,-18,-19,-20,-22,-23,-24)] # Remove column
data = as.matrix(df)
dimnames(data) = NULL
set.seed(1234)
index = sample(2,
               nrow(data),
               replace = TRUE,
               prob = c(0.75,0.25))
x_train = data[index == 1,-10]
class(x_train)
x_test = data[index == 2,-10]
#x_test_actual = data[index == 1,8]
y_test_actual = data[index == 2,10]

#  y data is an integer vector with values ranging from 0 to 9. To 
# prepare this data for training we one-hot encode the vectors into binary 
# class matrices using the Keras to_categorical() function
y_train = to_categorical(data[index==1,10])
y_test = to_categorical(data[index==2,10])


# apply mean on our train data
mean_train = apply(x_train,
                   2,
                   mean)

# apply standard deviation on test data
std_train = apply(x_train,
                  2,
                  sd)


x_train = scale(x_train,
                center = mean_train,
                scale = std_train)
x_test = scale(x_test,
               center = mean_train,
               scale = std_train)

#rescale train and test
x_train = array_reshape(x_train, c(nrow(x_train),9))
x_test = array_reshape(x_test, c(nrow(x_test),9))

# The core data structure of Keras is a model, a way to organize layers. 
# The simplest type of model is the sequential model, a linear stack of layers.
# We begin by creating a sequential model and then adding layers using the pipe (%>%) operator
model <- keras_model_sequential() 
model %>% 
  layer_dense(units = 256, activation = "relu", input_shape = c(9)) %>% 
  layer_dropout(rate = 0.4) %>% 
  layer_dense(units = 128, activation = "relu") %>%
  layer_dropout(rate = 0.3) %>%
  layer_dense(units = 3, activation = "softmax")
summary(model) #  details of the model

# compile the model with appropriate loss function, optimizer, and metrics
model %>% compile(
  loss = "categorical_crossentropy",
  optimizer = "adam",
  metrics = c("accuracy")
)

# Use the fit() function to train the model for 10 epochs using batches of 128 images
history <- model %>% 
  fit(x_train, 
      y_train, 
      epochs = 10, 
      batch_size = 128, 
      validation_split = 0.2)

# The history object returned by fit() includes loss and accuracy metrics which we can plot
plot(history)

# Evaluate the model's performance on the test data
model %>%
  evaluate(x_test,
           y_test)

# Generate predictions on new data
pred = model %>%
  predict_classes(x_test)

table(Predicted = pred,
      Actual = y_test_actual)
