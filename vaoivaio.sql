	create database vaiovaio;
    USE vaiovaio;
    

    CREATE TABLE `noticias` (
  `codigo` int(3) NOT NULL auto_increment,
  `titulo` longblob NOT NULL,
  `lead` longblob NOT NULL,
  `cuerpo` longblob NOT NULL,
   estado int(1) not null,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
    
   INSERT INTO noticias(titulo,lead,cuerpo,estado) VALUES("Empresa de agua potable adoptó medidas especiales para afectadostromba marina",
   "La compañía a cargo de la distribución del suministro en la región de Biobío, Essbio, dio a conocer una serie de medidas de excepción, 
   como la condonación de la deuda total a viviendas con daños estructurales, para clientes de sectores en Los Ángeles, Talcahuano y Concepción.",
   "La empresa de agua potable de la región de Biobío, Essbio, decidió aplicar medidas especiales para los usuarios afectados por el paso del tornado
   y trombas marinas en el sector de Los Ángeles, Talcahuano y Concepción. En primer lugar, la compañía revisará de manera especial la conexión de agua
   potable y efectuará un chequeo o recambio de medidor. Además, dejarán sin efecto los cortes e intereses por deuda a viviendas afectadas. Por otro lado,
   la sociedad informó que en el caso de viviendas con daños estructurales se condonará la totalidad de la deuda de agua vigente. ",0);
   
    INSERT INTO noticias(titulo,lead,cuerpo,estado) VALUES("Experto en asados enseña clandestinamente sus mejores cortes: La única gota que me preocupa es la del vino"
	,"El cocinero y empresario gastronómico Gastón Riveira, de la conocida franquicia argentina “La Cabrera”, conversa desde la parrilla con Emol en una cena para los 
    aficionados de los tintos y las carnes","SANTIAGO.- Una mesa prolijamente ordenada, dispuesta para 18 personas, comienza a llenarse una noche de lunes en la comuna 
    de Vitacura. Los comensales entran ordenados y se sientan frente a sus platos, a sabiendas del encanto que les significará una maldición gitana. De repente, miran 
    hacia el fondo en el que chisporrotean las brasas y donde un hombre con gafas los observa: es el chef Gastón Riveira, amo y señor del restaurant La Cabrera. 
    No tengo ni una estrella Michelin, pero al muñeco estoy cada vez más parecido, cuenta el cocinero argentino para partir el hielo con sus alumnos del Emporio Creativo, 
    el taller del cronista Daniel Greve donde se cocina este encuentro. Y sin duda que lo logra, ya que por ratos los presentes olvidarán que están en clases con todo un
    empresario gastronómico que ha trasladado los sabores de sus asados por ocho países del mundo, incluyendo un bastión en Santiago que esta semana cumplió un año. De repente,
    de la mano de meseros con boina y delantal de cuero, comienzan a llegar los primeros cortes. Se trata de unas jugosas tiras de entrañas, que cocinaron dos minutos por lado en
    una parrilla atiborrada de briquetas y que acompañaron con una bola de mantecosa provoleta. Para maridar, el dueño de casa sugiere una copa de malbec colchagüino proveniente de la Viña Maquis. Deliciosa combinación.
    ",0);
    
    INSERT INTO noticias(titulo,lead,cuerpo,estado) VALUES("Dan de alta en EE.UU. a la recién nacida prematura más pequeña del mundo: tenía el tamaño de una manzana",
    "'Saybie', como fue llamada por las enfermeras que la cuidaron, llegó al mundo en diciembre, cuando solo tenía 23 semanas de gestación.",
    "'Saybie', una niña nacida a las 23 semanas y tres días de gestación pesando apenas 245 gramos y midiendo 23 cm, fue dada de alta del hospital Sharp Mary Birch de 
    San Diego (California), donde en diciembre se convirtió en la sobreviviente más pequeña de nacimiento prematuro. Cuando 'Saybie' -el nombre que le dieron las enfermeras 
    que la cuidaron- abandonó la unidad de cuidados intensivos del hospital después de haber nacido con el tamaño de una manzana, pesaba ya 2,5 kilogramos y medía 40 cm, 
    indicaron fuentes del hospital. La niña nació por cesárea después que su madre fue diagnosticada con preeclampsia, un síndrome específico del embarazo que consiste en la 
    presencia de hipertensión arterial, y altos niveles de proteína en la orina.",0);