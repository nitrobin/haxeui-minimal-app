package demo;

import haxe.ui.containers.Box;

@:build(haxe.ui.macros.ComponentMacros.build("assets/ui/input_widget.xml"))
class InputWidget extends Box {
    public function new() {
        super();

        function update(e){
            var d = Std.parseInt(tf.text);
            tf2.text =  "" + d * d;
        };
        tf.onChange = update;

        bt1.onClick = function(e) {
            tf.text = '' + (Std.parseInt(tf.text) - 1);
            var d = Std.parseInt(tf.text);
            tf2.text =  "" + d * d;
            update(null);
        };
        bt2.onClick = function(e) {
            tf.text = '' + (Std.parseInt(tf.text) + 1);
            update(null);
        };
    }
}