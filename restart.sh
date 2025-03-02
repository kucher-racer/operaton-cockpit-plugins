#!/bin/bash
set -x  #

npm run build &&

cp definition-historic-activities.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp instance-historic-activities.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp instance-route-history.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp instance-tab-modify.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp robot-module.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp tasklist-audit-log.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&
cp tasklist-config.js /media/user/Data/Camunda/CockpitPlugin/src/main/resources/META-INF/resources/webjars/camunda/app/cockpit/scripts/ &&

export $(grep -v '^#' /media/user/Data/Camunda/CockpitPlugin/.env | xargs) && mvn -f /media/user/Data/Camunda/CockpitPlugin/ spring-boot:run

set +x
