#
# grunt-phpspec
# http://www.jamescryer.com/grunt-phpspec
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict'

exec = require('child_process').exec

exports.init = (grunt) ->

  #
  # Runs phpspec command with callback
  #
  # @param String command
  # @param Function callback
  #
  exports.run = (command, callback) ->

    exec command, (err, stdout, stderr) ->
      grunt.log.write(stdout) if stdout
      grunt.fatal(err) if err
      callback()

  return exports