# grunt-phpspec [![Build Status](https://travis-ci.org/jrcryer/grunt-phpspec.png?branch=master)](https://travis-ci.org/jrcryer/grunt-phpspec)

> Grunt plugin for running PHPSpec.

_This plugin is developed for Grunt `0.4.1` and is not tested for backward compatibility with Grunt `0.3.x`._

##Getting Started
1. Install this grunt plugin with the following command:

    ```shell
    npm install grunt-phpspec --save-dev
    ```


2. [Install PHPSpec](http://phpspec.net/) (preferably with [composer](https://github.com/composer/composer))
3. Add this to your project's `Gruntfile.js` gruntfile:

    ```js
    grunt.loadNpmTasks('grunt-phpspec');
    ```


##PHPSpec task
_Run this task with the `grunt phpspec` command._

_This task is a [multi task][] so any targets, files and options should be specified according to the [multi task][] documentation._

[multi task]: https://github.com/gruntjs/grunt/wiki/Configuring-tasks


###Usage Example

```js
phpspec: {
    app: {
        specs: 'specs/'
    },
    options: {
        prefix: 'bin/'
    }
}
```

###Target Properties
####specs
Type: `String`

The directory where containing Specs to be run.

###Options
####prefix
Type: `String`  Default: `''`
