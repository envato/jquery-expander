module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      build:
        files:
          "jquery.expander.js": "jquery.expander.js.coffee",
          "jquery.expander_spec.js": "jquery.expander_spec.js.coffee"

    jasmine:
      test:
        src: 'jquery.expander.js',
        options:
          specs: 'jquery.expander_spec.js'
          vendor:
            ["node_modules/jquery/dist/jquery.js", "node_modules/jasmine-jquery/lib/jasmine-jquery.js"]

    clean: ["jquery.expander_spec.js"]

    watch:
      files: ["jquery.expander.js.coffee", "jquery.expander_spec.js.coffee"],
      tasks: ["coffee:build", "jasmine", "clean"]

  grunt.loadNpmTasks("grunt-contrib-coffee")
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-clean')
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask("default", ["watch"])
  grunt.registerTask("build", ["coffee:build", "jasmine", "clean"])

