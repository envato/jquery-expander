(function() {
  var Expander,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  Expander = (function() {
    function Expander(expander, options) {
      this.expander = expander;
      this.handleClick = __bind(this.handleClick, this);
      this.options = $.extend({}, this.defaults, options);
      this.$toggle = $(this.expander);
      this.$target = this.options.target != null ? this.$toggle.find(this.options.target) : $(this.$toggle.data("target"));
      this.$toggle.on("click", this.handleClick);
    }

    Expander.prototype.defaults = {
      toggleClass: 'is-active',
      targetClass: 'is-hidden'
    };

    Expander.prototype.handleClick = function(event) {
      event.preventDefault();
      this.$toggle.toggleClass(this.options.toggleClass);
      return this.$target.toggleClass(this.options.targetClass);
    };

    return Expander;

  })();

  $.fn.expander = function(options) {
    return this.each(function() {
      var $this, plugin;
      $this = $(this);
      if ($this.data('plugin_expander') === void 0) {
        plugin = new Expander(this, options);
        return $this.data('plugin_expander', plugin);
      }
    });
  };

}).call(this);
