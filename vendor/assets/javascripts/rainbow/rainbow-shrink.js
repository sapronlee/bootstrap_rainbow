!function ($) {
  
  "use strict"; // jshint ;_;
  
  /* SHRINK PUBLIC CLASS DEFINITION
   * ================================ */
  
  var Shrink = function(element, options) {
    this.$element = $(element)
    this.options = $.extend({}, $.fn.shrink.defaults, options)
  }
  
  Shrink.prototype = {
    
    Constructor: Shrink,
    
    toggle: function() {
      var $box = this.$element.parents('.box'),
          $icon = this.$element.children('i')
      
      $box.toggleClass('closed')
      $icon.toggleClass(this.options.showIcon).toggleClass(this.options.hideIcon)
    }
  }
  
  /* SHRINK PLUGIN DEFINITION
   * ========================== */
  
  var old = $.fn.shrink
  
  $.fn.shrink = function (option) {
    return this.each(function () {
      var $this = $(this),
          data = $this.data('shrink'),
          options = typeof option == 'object' && option
      if (!data) $this.data('shrink', (data = new Shrink(this, options)))
      if (option == 'shrink') data.toggle()
    })
  }
  
  $.fn.shrink.defaults = {
    showIcon: 'icon-caret-up',
    hideIcon: 'icon-caret-down'
  }
  
  $.fn.shrink.Constructor = Shrink
  
  /* SHRINK NO CONFLICT
   * ==================== */


  $.fn.shrink.noConflict = function () {
    $.fn.shrink = old
    return this
  }
  
  /* SHRINK DATA-API
   * ================= */
  
  $(document).on('click.shrink.data-api', '[data-toggle="shrink"]', function (e) {
    var $btn = $(this)
    $btn.shrink('shrink')
  })
  
}(window.jQuery);