read opc
case $opc in
        1)
                sudo docker run --rm -it -p 8080:8080 -t webgoat/webgoat
                ;;
        2)
                sudo docker run --rm -it -p 8082:80 vulnerables/web-dvwa
                ;;
        3)
                sudo docker run --rm -it -p 8083:3000 bkinminich/juice-shop

esac
break;

