package demo;

class Classes {

    public static inline function register() {
        addClass("input_widget_fromcode", "demo.InputWidget");
    }

    macro public static function addClass(alias:String, className:String, keep:Bool = false) 
    {
        if (keep) {
            haxe.macro.Context.getModule(className);
        }
        
        haxe.ui.core.ComponentClassMap.register(alias, className);
        return macro haxe.ui.core.ComponentClassMap.register($v{alias}, $v{className});
    }
}
