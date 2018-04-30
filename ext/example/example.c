
#include <ruby.h>

static VALUE c_example1;

static VALUE add_method1(VALUE klass_, VALUE a_, VALUE b_)
{
  int a = NUM2INT(a_);
  int b = NUM2INT(b_);
  int r = a + b;
  return INT2NUM(r);
}

void Init_example(void)
{
  c_example1 = rb_define_class("Example1", rb_cObject);
  rb_define_method(c_example1, "add", add_method1, 2);
}
