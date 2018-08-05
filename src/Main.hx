package;

import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;

class Main {

    public static function main() {
        demo.Classes.register();

        //Toolkit.scale = 2.5;
        //Toolkit.theme = "native";
        var app = new HaxeUIApp();
        app.ready(function() {
            var main:Component = ComponentMacros.buildComponent("assets/ui/main.xml");
            app.addComponent(main);
            app.start();
        });
    }
}
