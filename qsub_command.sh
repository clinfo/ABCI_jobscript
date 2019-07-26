x=`pwd`
d=`date +%Y%m%d%H%M`
sed -e "s#<command>#$*#g" ${HOME}/qsub_template.sh | sed -e "s#<pwd>#${x}#g" > ${HOME}/tmp/cmd.${d}.$$.sh
qsub -g gca50095 ${HOME}/tmp/cmd.${d}.$$.sh

