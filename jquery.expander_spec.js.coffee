describe "jQuery Expander", ->
  describe "with default classes", ->
    beforeEach ->
      setFixtures '<b class="js-toggle" data-target="#target"></b><i class="js-target" id="target"></i>'
      @$toggle = $(".js-toggle")
      @$target = $(".js-target")
      @$toggle.expander()

    describe "when a toggle is clicked once", ->
      it "adds correct class to toggle", ->
        @$toggle.click()
        expect( @$toggle ).toHaveClass( "is-active" )

      it "adds correct class to target", ->
        @$toggle.click()
        expect( @$target ).toHaveClass( "is-hidden" )

    describe "when a toggle is clicked twice", ->
      it "adds correct class to toggle", ->
        @$toggle.click().click()
        expect( @$toggle ).not.toHaveClass( "is-active" )

      it "adds correct class to target", ->
        @$toggle.click().click()
        expect( @$target ).not.toHaveClass( "is-hidden" )

  describe "with custom classes", ->
    beforeEach ->
      setFixtures '<b class="js-toggle" data-target="#target"></b><i class="js-target" id="target"></i>'
      @$toggle = $(".js-toggle")
      @$target = $(".js-target")
      @$toggle.expander
        toggleClass: "foo"
        targetClass: "bar"

    describe "when a toggle is clicked once", ->
      it "adds correct class to toggle", ->
        @$toggle.click()
        expect( @$toggle ).toHaveClass( "foo" )

      it "adds correct class to target", ->
        @$toggle.click()
        expect( @$target ).toHaveClass( "bar" )

    describe "when a toggle is clicked twice", ->
      it "adds correct class to toggle", ->
        @$toggle.click().click()
        expect( @$toggle ).not.toHaveClass( "foo" )

      it "adds correct class to target", ->
        @$toggle.click().click()
        expect( @$target ).not.toHaveClass( "bar" )