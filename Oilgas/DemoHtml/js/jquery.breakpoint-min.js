!function(a){"use strict";function b(a){if(!a.condition()){if("function"==typeof a.exit)try{a.exit.apply(a)}catch(b){}a.is_active=!1}}function c(a){if(a.condition()){if("function"==typeof a.first_enter){try{a.first_enter.apply(a)}catch(b){}delete a.first_enter}if("function"==typeof a.enter)try{a.enter.apply(a)}catch(b){}a.is_active=!0}}function d(a){a.is_active?b(a):c(a)}function e(){var d=a.grep(f,function(a){return a.is_active}),e=a.grep(f,function(a){return!a.is_active});a.each(d,function(a,c){b(c)}),a.each(e,function(a,b){c(b)})}var f=[];a.breakpoint=function(b,c){c=a.extend(!0,{},a.breakpoint.defaults,c),f.push(b),1===f.length&&a(window).on("resize orientationchange",function(){e()}),d(b)},a.breakpoint.breakpoints=f,a.breakpoint.remove=function(b){for(var c;-1!==(c=a.inArray(b,a.breakpoint.breakpoints));)a.breakpoint.breakpoints.splice(c,1)},a.breakpoint.check=function(a){d(a)},a.breakpoint.defaults={}}(jQuery);