# Práctica-01-04-daw

## Intancia Ubuntu.

Primeramente tenemos que crear una instancia para realizar esta actividad, la llamo Ubuntu:

![](./img/i1.png)

En el origen seleccionamos imagen, y le damos a NO crear un nuevo volumen.

Además vamos a seleccionar la última versión de ubuntu que hay:

![](./img/i2.png)

En sabor escogemos a nuestro gusto, en mi caso puse 2GB de RAM:

![](./img/i3.png)

En par de claves seleccioné una que ya tenía creada, llamada FedoraDefinitivo:

![](./img/i4.png)

Y aquí se ve creada y funcionando la instancia de Ubuntu la cuál le hemos asociado una IP flotante:

![](./img/i5.png)

## Descripción del proceso de creación y configuración del certificado SSL/TLS autofirmado en el servidor web Apache.

Creamos el certificado autofirmado:

![](./img/uno.png)

Copiamos el archivo de VirtualHost de SSL/TLS:

![](./img/dos.png)

Habilitamos el VirtualHost que acabamos de configurar:

![](./img/tres.png)

Habilitamos el módulo SSL en Apache:

![](./img/cuatro.png)

Copiamos el archivo de VirtualHost de HTTP:

![](./img/cinco.png)

Habilitamos el módulo rewrite:

![](./img/seis.png)

Reiniciamos el servidor Apache:

![](./img/siete.png)

Nos sale un aviso de que la conexión no es privada, y debemos entrar en configuración avanzada y pincharle a acceder a la IP flotante de nuestra instancia:

![](./img/aviso.png)

Una vez hecho esto, hemos verificado que nos funciona correctamente y saldría esto:

![](./img/final.png)