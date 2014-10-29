class Expander
  constructor: ( @expander, options ) ->
    @options = $.extend {}, @defaults, options
    @$toggle = $( @expander )
    @$target = if @options.target? then @$toggle.find( @options.target ) else $( @$toggle.data("target") )

    @$toggle.on "click", @handleClick

  defaults:
    toggleClass: 'is-active'
    targetClass: 'is-hidden'


  handleClick: (event) =>
    event.preventDefault()

    @$toggle.toggleClass( @options.toggleClass )
    @$target.toggleClass( @options.targetClass )


$.fn.expander = ( options ) ->
  this.each ->
    $this = $( this )

    if $this.data( 'plugin_expander' ) is undefined
      plugin = new Expander( this, options )
      $this.data( 'plugin_expander', plugin )