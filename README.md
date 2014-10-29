jquery-expander
==============

A jQuery plugin that toggles classes on two elements.

### Usage

`$(element).expander()`

#### Options

* `target` - selector to find the target element. This needs to be inside the element the plugin is executed on. If the target is outside of the element the plugin is executed on you can use a data attribute  `data-target="#target"` that will do a global DOM search
* `toggleClass` - class to toggle on the element (default `is-active`)
* `targetClass` - class name to toggle on the target element (default `is-hidden`)


```
$(element).expander({
  target: '.target-element'
  toggleClass: 'is-active',
  targetClass: 'is-hidden'
})
```

### Development

* `npm install`

run `grunt` to watch for files for changes and run the CoffeeScript compilation and tests 
