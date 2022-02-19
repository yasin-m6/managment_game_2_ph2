#ifndef MANAGER_H
#define MANAGER_H

#include <QObject>
#include "vegtebale.h"

class Manager : public QObject
{
    Q_OBJECT
public:
    explicit Manager(QObject *parent = nullptr);

private:
    Vegtebale my_farm;

signals:

public slots:
    int getWaterTime();
    int getCropTime();

    int get_crop_spoiled();
    int get_water_spoiled();

    bool chackWaterTime();
    bool checkCropTime();

    int water_timer();
    int crop_timer();
    int spoiled_water_timer();
    int spoiled_crop_timer();

};

#endif // MANAGER_H
