#
# grunt-phpspec
# http://www.jamescryer.com/grunt-phpspec
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict';

# External libs.
path = require('path')

exports.init = (grunt) ->

  exports   = {}
  _         = grunt.util._
  directory = null
  config    = {}
  defaults  = {}

  #
  # Returns the command to be run
  #
  #
  command = ->
    'phpspec run'

  #
  # Returns the prefix to the cucumber command
  #
  #
  prefix = ->
    return config.prefix unless config.prefix == undefined
    ''

  #
  # Returns the directory that cucmber features will be run from
  #
  # @return string
  #
  exports.directory = ->
    directory

  #
  # Setup task before running it
  #
  # @param Object runner
  #
  exports.build = (features, options) ->

    directory = path.normalize features
    config    = options defaults

    return prefix() + command() + ' ' + directory

  return exports
