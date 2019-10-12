# Prework

## APP Life Cycle

Una App iOS experimenta varios estados a medida que se ejecuta, estos estados se conocen como condiciones del ciclo de vida de la App, la condición de la app se caracteriza por su nivel de actividad.

En iOS 13 y versiones posteriores, se puede actualizar el estado por medio de "scene-based".
Una escena representa una instancia de la interfaz, cada escena tiene su propio ciclo de vida.

## Arquitectura Modelo Vista Controlador

Patron de diseño que divide el software en 3 capas distintas y separadas, donde cada capa tiene una única responsabilidad, esas capas son: 

• Model: Se encapsulan los datos de la aplicación, debe ser lo más reutilizable posible.

• View: Es cualquier objeto de la aplicación que los usuarios pueden ver. Un objeto view sabe como debe mostrarse en pantalla y puede responder a acciones del usuario. La responsabilidad principal de un objeto view es mostrar los datos del modelo y ofrecer la posibilidad de modificar dichos datos. A pesar de esto, los objetos view deben desacoplarse de los objetos modelo en una aplicación con MVC.

• Controller: Su principal misión es mantener sincronizadas ambas capas, Es el intermedario entre Model y View a través del cual los objetos View reciben los cambios del Modelo y viceversa. Los objetos controller también pueden realizar tareas de configuración y coordinación de una aplicación, administrando el ciclo de vida de otros objetos.
