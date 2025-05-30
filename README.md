## larmojdsango

Este programa soluciona las ecuaciones de campo de Einstein acopladas mínimamente a 3 campos de materia: Klein-Gordon, Dirac y Proca. Este acople se hace a nivel de la acción de Einstein-Hilbert considerando los distintos lagrangianos.

El proceso de acople se puede ver en los siguientes artículos:
- Guzmán, F. S. (2009). The three dynamical fates of Boson Stars. Revista mexicana de física, 55(4), 321-326.
- Daka, E., Phan, N. N., & Kain, B. (2019). Perturbing the ground state of Dirac stars. Physical Review D, 100(8), 084042.
- Joaquin, C., & Alcubierre, M. (2025). Proca stars in excited states. General Relativity and Gravitation, 57(2), 45.

Para ocupar este progrma es necesario lo siguiente:
1. El archivo \'input.par\' guarda los parámetros de entrada, cada línea tiene especificada la variable. La variable \'campo0\' se refiere a uno de los parámetros libres del shootng, mientras que \'w\' se refiere al otro. Para encontrar los parámetros necesarios para tener una estrella 'aceptable' se deben usar las notebooks, en ellas ya está implementado un *shooting* para encontrarlos. Es recomendable usar este *shoting* solo para afinar los valores iniciales.
2. Una vez definido el parámetro de entrada se ejecuta la orden `make` sobre la carpeta raíz de este proyecto. Esto generará una carpeta llamada \'data\'.
3. En la carpeta \'data\' se encontrará una copia del archivo de parámetros \'input.par\' y un ejecutable llamado \'estrella\', se ejecuta este último con `./estrella` estando en la carpeta \'data\'. Al ejecutar `estrella` se creará una carpeta con el valor inicial del campo y dentro estará la información calculada, además de una copia del \'input.par\', de este modo se puede modificar el archivo \'input.par\' de la carpeta \'data\' y en esta misma se puede volver a ejecutar `estrella` para tener distintas soluciones sin necesidad de compilar cada vez.
4. Una vez terminado el proceso de ejecución se pueden graficar los distintos archivos generados.
5. Se puede calcular también el cociente de convergencia con la notebook \'Lax\'. Para usarla se debe evolucionar con tres \'dr\' y se deben colocar las carpetas en la misma dirección que la notebook con los nombres correspondientes (al leer la notebook será más claro qué nombres).
6. Las estrellas pueden migrar de estados excitados a estados base, en ese proceso pierden masa y cambian su frecuencia después de cierto tiempo. Para estimar la masa a la que decaen está la notebook \'masas\', mientras que para estimar la frecuencia está la notebook \'frecuencias\', en esta última se necesita ajustar manualmente la frecuencia, pero se recomienda usar análisis de Fourier.
