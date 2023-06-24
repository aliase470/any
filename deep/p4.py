""" Evaluating feed forward deep network for regression using 
KFold cross validation. """
import pandas as pd
from keras.models import Sequential
from keras.layers import Dense
from keras.wrappers.scikit_learn import KerasRegressor
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import KFold
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline

dataframe = pd.read_csv("HousingData.csv", delim_whitespace=False, header=None, skiprows=1)
dataset = dataframe.values
X = dataset[:, 0:13]
Y = dataset[:, 13]
print(X, Y)
print(dataset.shape)


def wider_model():
    model = Sequential()
    model.add(Dense(15, input_dim=13, kernel_initializer='normal', activation='relu'))
    model.add(Dense(13, kernel_initializer="normal", activation='relu'))
    model.add(Dense(1, kernel_initializer='normal'))
    model.compile(loss='mean_squared_error', optimizer='adam')
    return model


estimators = []
estimators.append(('standardize', StandardScaler()))
estimators.append(('mlp', KerasRegressor(build_fn=wider_model, epochs=2, batch_size=2)))

kfold = KFold(n_splits=10)
pipeline = Pipeline(estimators)
results = cross_val_score(pipeline, X, Y, cv=kfold)
print("Wider: %.2f MSE" % (results.mean()))

""" 
import pandas as pd
from keras.models import Sequential
from keras.layers import Dense
from keras.wrappers.scikit_learn import KerasRegressor 
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import KFold
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline
dataframe = pd.read_csv("HousingData.csv", delim_whitespace=False, header=None)
dataset = dataframe.values
X = dataset[:, 0:13]
Y = dataset[:, 13]
print(X,Y)
print(dataset.shape)
def wider_model():
    model = Sequential()
    model.add(Dense(15, input_dim-13, kernel_initializer='normal', activation='relu'))
    model.add(Dense(13, kernel_initializer="normal", activation='relu'))
    model.add(Dense(1, kernel_initializer='normal'))
    model.compile(loss='mean_squared_error', optimizer='adam')
    return model
estimators = []

estimators.append(('standardize', StandardScaler()))
estimators.append(('mlp', KerasRegressor (build_fn-wider_model, epochs-100, batch_size=5)))
kfold = KFold(n_splits=10)
results = cross_val_score (pipeline, X, Y, cv=kfold)
print("Wider: %.2f (.2f) MSE" % (results.mean(), results.std())) """