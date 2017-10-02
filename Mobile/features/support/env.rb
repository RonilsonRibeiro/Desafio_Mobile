require 'calabash-android/cucumber'
require 'calabash-android/calabash_steps'
require 'calabash-android/management/adb'
require 'calabash-android/operations'
require 'calabash-android/management/app_installation'
require 'calabash-android/abase'
require 'pry'
require 'cucumber'


DATATABLE = (YAML.load_file('./features/fixtures/base_dados.yml'))
