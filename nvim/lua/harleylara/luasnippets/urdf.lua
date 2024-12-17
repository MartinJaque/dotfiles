local ls = require('luasnip')

return {
    ls.snippet(
        {
            trig="robot",
            dscr="Testing snippets",
        },
        {
            ls.text_node(
                {
                    '<?xml version="1.0"?>',
                    '<?xml-model href="https://raw.githubusercontent.com/ros/urdfdom/master/xsd/urdf.xsd"?>',
                    '<robot name="'
                }
            ),
            ls.insert_node(1, "robot_name"),
            ls.text_node(
                {
                    '" xmlns="http://www.ros.org">',
                    '</robot>'
                }
            ),
        }
    ),
}
