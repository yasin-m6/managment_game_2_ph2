#include "manager.h"
#include<iostream>
#include<ctime>
using namespace std;
//#include<iostream>

Manager::Manager(QObject *parent) : QObject(parent)
{
    my_farm.set_type(1);
}

int Manager::getWaterTime()
{
    return my_farm.get_water_time();
}

int Manager::getCropTime()
{
    return my_farm.get_crop_time();
}

int Manager::get_crop_spoiled()
{
    return my_farm.get_spoiled_crop_time();
}
int Manager::get_water_spoiled()
{
    return my_farm.get_spoiled_water_time();
}

bool Manager::chackWaterTime()
{
    return my_farm.check_water_time();
}

bool Manager::checkCropTime()
{
    return my_farm.check_crop_time();
}

int Manager::water_timer()
{
    return my_farm.get_water_timer();
}

int Manager::crop_timer()
{
    return my_farm.get_crop_timer();
}

int Manager::spoiled_water_timer()
{
    return my_farm.get_spoiled_water_timer();
}

int Manager::spoiled_crop_timer()
{
    return my_farm.get_spoiled_crop_timer();
}
