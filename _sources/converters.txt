Custom Converters
=================

:doc:`ORM <orm>`, :doc:`XML <xml>` & :doc:`JSON <json>` support the following types:

* primitives & wrappers
* String
* Enum
* Date
* UUID
* Uri
* JSONObject
* JSONArray
* Bitmap
* Model & Entity
* arrays & collections of the above

If you need to support an extra type:

#. Subclass ``Converter``, implement required methods. See existing converters for an example.
#. Register it by calling ``ConverterRegistry.registerConverter(Converter<?> converter);``.