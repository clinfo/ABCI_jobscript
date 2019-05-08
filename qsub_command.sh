x=`pwd`
d=`date +%Y%m%d%H%M`
sed -e "s#<command>#$*#g" /home/aca10350zi/qsub_temlate.sh | sed -e "s#<pwd>#${x}#g" > ~/tmp/cmd.${d}.$$.sh
qsub -g gca50095 ~/tmp/cmd.${d}.$$.sh


