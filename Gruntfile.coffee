#
# grunt-phpspec
# http://www.jamescryer.com/grunt-phpspec
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict'

module.exports = (grunt) ->
  grunt.initConfig
    phpspec:
      test:
        specs: 'spec/'
      options:
        prefix: 'bin/'

  grunt.loadTasks 'tasks'

  grunt.registerTask 'default', ['phpspec']
