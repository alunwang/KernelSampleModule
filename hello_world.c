#include <linux/init.h>
#include <linux/module.h>

static int __init hello_init(void)
{
        printk(KERN_INFO"Hello world!");

        return 0;
}

static void __exit hello_exit(void)
{
        printk(KERN_INFO"Bye world!");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Lunsheng Wang, lunsheng.wang@gmail.com");
MODULE_ALIAS("Hello");
MODULE_DESCRIPTION("Hello - a simple kernel module.");