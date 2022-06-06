#include <time.h>
#include <stdio.h>
#include "set_time_helper.h"

void set_time_via_helper(set_time_helper* set_time_helper, time_t time)
{
  printf("set_time_via_helper, time: %ld", time);
  set_time_callback_function(set_time_helper, time);
}