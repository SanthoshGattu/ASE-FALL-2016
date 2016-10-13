//Karma Configuration

modue.exports = function(config){
config.set({

//base path that will be used to  resolve all patterns (eg.files , exclude)
basePath: '',


//framework to use 
//available framworks: https://npm.js.org/browse/keyword/karma-adapter
framworks: ['jasmine'],



//list of files / patterns to load in the browser

files: [
],


//list of files to exclude
exclude: [
],


//preprocess matching files before serving them to the  browser
//available preprocessors: https://npm.js.org/browse/keyword/karma-preprocessors
 preprocessors: {
 },
 
 
 //test results reporter to use
 //possible values: 'dots', 'progress'
 //available reporters: https://npm.js.org/browse/keyword/karma-reporter
reporters: ['progress'] 


//web server port

port: 9876,

}