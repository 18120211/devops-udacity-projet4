import logging
logging.basicConfig(filename='/etc/error.log',
                        level=logging.DEBUG,
                        format='[%(asctime)s] %(levelname)s in app.py: %(message)s', datefmt='%m/%d/%y %H:%M:%S')

logfile = logging.getLogger('')
logfile.info('nothing')
logfile.info('hahaha')
logfile.log(msg='ANH', level=logging.DEBUG)