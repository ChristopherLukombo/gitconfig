# gitconfig

https://github.com/ChristopherLukombo/DematNotes/blob/master/src/main/java/org/csid/web/rest/AuditResource.java

https://github.com/ChristopherLukombo/DematNotes/blob/master/src/main/java/org/csid/service/AuditEventService.java

https://github.com/ChristopherLukombo/DematNotes/blob/master/src/main/java/org/csid/repository/PersistenceAuditEventRepository.java

Hello,

Je voulais vous faire un petit CR de ce que j'avais fait pour la purge de BSC.

Dans un premier temps, on supprime les messages dèja confirmés de BSC. On garde que le premier confirmés.

Puis dans un second temps, on supprime les messages non confirmés, les archive (dans la table trace_bsc_archive) dès qu'il y a au moins un message confirmé.

Enfin, je me demande si on devrait pas aussi supprimer les messages qui sont tous non confirmés depuis un très long laps de temps ?

Voilà.
Qu'en pensez-vous ?
Si vous avez d'autres idées, n'hésitez pas à me le faire savoir.

