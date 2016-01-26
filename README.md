# moodle-block_sidebar
It functions by associating a course section with a sidebar block instance. This is done by mirroring the contents of an “orphaned” section. Here’s an example:

    Let’s assume that a course has 10 sections
    When you create a Sidebar block, this block will automatically be associated with the next section 11, which is hidden (orphaned)
    You can now add resources and activities directory to this Sidebar block. Note that these objects will actually get created in section 11, but they are also shown in the Sidebar block. Any changed made in the Sidebar block will be applied to section 11, and vice-versa. 


You can create multiple Sidebar blocks. Each instance will be associated with a different orphaned section. You can also manually select the orphaned section, if needed.

All resources and activities within a block can be edited and moved around just like normal activities when editing is turned on. Adding label resources allows you to add text to the blocks as well.

In a sense, this block combined the main menu block functions and HTML block functions into a single block that can be used in a course

Loation on Moodle Plugin Repository: https://moodle.org/plugins/block_side_bar 
