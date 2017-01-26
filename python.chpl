/*
 * Copyright (C) 2017 Marcos Cleison Silva Santana
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
module Python{
//Python2.7

use SysBasic;
require "python2.7/Python.h";

extern record Py_uintptr_t{
}

extern record Py_intptr_t{
}

extern record Py_ssize_t{
}
extern "struct _typeobject" record _typeobject{
	
}

extern proc  _Py_get_387controlword():c_ushort;
extern proc  _Py_set_387controlword(x: c_ushort ):c_void_ptr;
extern proc  PyMem_Malloc():c_void_ptr;
extern proc  PyMem_Realloc(x: c_void_ptr, size_t: c_int ):c_void_ptr;
extern proc  PyMem_Free(x: c_void_ptr ):c_void_ptr;
extern "struct _object" record _object{
	
}

extern record PyObject{
}


extern record PyVarObject{
}

extern record unaryfunc{
}

extern record binaryfunc{
}

extern record ternaryfunc{
}

extern record inquiry{
}

extern record lenfunc{
}

extern record coercion{
}

extern record intargfunc{
}

extern record intintargfunc{
}

extern record ssizeargfunc{
}

extern record ssizessizeargfunc{
}

extern record intobjargproc{
}

extern record intintobjargproc{
}

extern record ssizeobjargproc{
}

extern record ssizessizeobjargproc{
}

extern record objobjargproc{
}

extern record getreadbufferproc{
}

extern record getwritebufferproc{
}

extern record getsegcountproc{
}

extern record getcharbufferproc{
}

extern record readbufferproc{
}

extern record writebufferproc{
}

extern record segcountproc{
}

extern record charbufferproc{
}

extern "struct bufferinfo" record bufferinfo{
	
}

extern record Py_buffer{
}

extern record getbufferproc{
}

extern record releasebufferproc{
}

extern record objobjproc{
}

extern record visitproc{
}

extern record traverseproc{
}


extern record PyNumberMethods{
}


extern record PySequenceMethods{
}

extern record PyMappingMethods{
}



extern record PyBufferProcs{
}

extern record freefunc{
}

extern record destructor{
}

extern record printfunc{
}

extern record getattrfunc{
}

extern record getattrofunc{
}

extern record setattrfunc{
}

extern record setattrofunc{
}

extern record cmpfunc{
}

extern record reprfunc{
}

extern record hashfunc{
}

extern record richcmpfunc{
}

extern record getiterfunc{
}

extern record iternextfunc{
}

extern record descrgetfunc{
}

extern record descrsetfunc{
}

extern record initproc{
}

extern record newfunc{
}

extern record allocfunc{
}


extern record PyTypeObject{
}
extern record FILE{

}
extern  record va_list{

}
extern record PyMemberDef{}

extern "struct _heaptypeobject" record _heaptypeobject{
	
}

extern record PyHeapTypeObject{
}

extern proc  PyType_IsSubtype(args1: c_ptr(PyTypeObject ), args2: c_ptr(PyTypeObject ) ):c_int;
extern proc  PyType_Ready(args1: c_ptr(PyTypeObject ) ):c_int;
extern proc  PyType_GenericAlloc( args2: c_ptr(PyTypeObject ), args3: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyType_GenericNew( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyType_Lookup( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyObject_LookupSpecial( args2: c_ptr(PyObject ), args3: c_ptr(c_char), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyType_ClearCache():c_uint;
extern proc  PyType_Modified(args1: c_ptr(PyTypeObject ) ):c_void_ptr;
extern proc  PyObject_Print(args1: c_ptr(PyObject ), args2: c_ptr(FILE ), args3: c_int ):c_int;
extern proc  _PyObject_Dump(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyObject_Repr( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyObject_Str( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_Str( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_Unicode( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_Compare(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_RichCompare( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_int ):c_ptr(PyObject );
extern proc  PyObject_RichCompareBool(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_int ):c_int;
extern proc  PyObject_GetAttrString( args2: c_ptr(PyObject ), args3: c_string ):c_ptr(PyObject );
extern proc  PyObject_SetAttrString(args1: c_ptr(PyObject ), args2: c_string, args3: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_HasAttrString(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyObject_GetAttr( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_SetAttr(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_HasAttr(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  _PyObject_GetDictPtr( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_SelfIter( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyObject_NextNotImplemented( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_GenericGetAttr( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_GenericSetAttr(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_Hash(args1: c_ptr(PyObject ) ):c_long;
extern proc  PyObject_HashNotImplemented(args1: c_ptr(PyObject ) ):c_long;
extern proc  PyObject_IsTrue(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_Not(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyCallable_Check(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyNumber_Coerce(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyNumber_CoerceEx(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_ClearWeakRefs(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _PyObject_SlotCompare(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  _PyObject_GenericGetAttrWithDict( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyObject_GenericSetAttrWithDict(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_Dir( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  Py_ReprEnter(args1: c_ptr(PyObject ) ):c_int;
extern proc  Py_ReprLeave(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _Py_HashDouble(args1: c_double ):c_long;
extern proc  _Py_HashPointer(args1: c_void_ptr ):c_long;
extern record _Py_HashSecret_t{
}

extern proc  Py_IncRef(args1: c_ptr(PyObject ) ):c_void_ptr;

extern proc  Py_DecRef(args1);

extern proc  _PyTrash_deposit_object(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _PyTrash_destroy_chain():c_void_ptr;
extern proc  _PyTrash_thread_deposit_object(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _PyTrash_thread_destroy_chain():c_void_ptr;
extern proc  PyObject_Malloc():c_void_ptr;
extern proc  PyObject_Realloc(args1: c_void_ptr, size_t: c_int ):c_void_ptr;
extern proc  PyObject_Free(args1: c_void_ptr ):c_void_ptr;
extern proc  PyObject_Init( args2: c_ptr(PyObject ), args3: c_ptr(PyTypeObject ) ):c_ptr(PyObject );
extern proc  PyObject_InitVar(_PyVarObject: PyVarObject, args2: c_ptr(PyVarObject ), args3: c_ptr(PyTypeObject ), args4: Py_ssize_t ):c_ptr(PyVarObject );
extern proc  _PyObject_New( args2: c_ptr(PyTypeObject ) ):c_ptr(PyObject );
extern proc  _PyObject_NewVar(_PyVarObject: PyVarObject, args2: c_ptr(PyTypeObject ), args3: Py_ssize_t ):c_ptr(PyVarObject );
extern proc  PyGC_Collect(_Py_ssize_t: Py_ssize_t ):Py_ssize_t;
extern proc  _PyObject_GC_Resize(_PyVarObject: PyVarObject, args2: c_ptr(PyVarObject ), args3: Py_ssize_t ):c_ptr(PyVarObject );
extern record PyGC_Head{
}

extern proc  _PyObject_GC_Malloc(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  _PyObject_GC_New( args2: c_ptr(PyTypeObject ) ):c_ptr(PyObject );
extern proc  _PyObject_GC_NewVar(_PyVarObject: PyVarObject, args2: c_ptr(PyTypeObject ), args3: Py_ssize_t ):c_ptr(PyVarObject );
extern proc  PyObject_GC_Track(args1: c_void_ptr ):c_void_ptr;
extern proc  PyObject_GC_UnTrack(args1: c_void_ptr ):c_void_ptr;
extern proc  PyObject_GC_Del(args1: c_void_ptr ):c_void_ptr;
extern proc  Py_FatalError(message: c_string ):c_void_ptr;

extern record Py_UCS4{
}

extern record Py_UNICODE{
}

extern record PyUnicodeObject{
}

extern proc  PyUnicodeUCS4_FromUnicode( u: c_ptr(Py_UNICODE ), size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromStringAndSize( u: c_string, size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromString( u: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsUnicode(_Py_UNICODE: Py_UNICODE, unicode: c_ptr(PyObject ) ):c_ptr(Py_UNICODE );
extern proc  PyUnicodeUCS4_GetSize(_Py_ssize_t: Py_ssize_t, unicode: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyUnicodeUCS4_GetMax(_Py_UNICODE: Py_UNICODE ):Py_UNICODE;
extern proc  PyUnicodeUCS4_Resize(unicode: c_ptr(PyObject ), length: Py_ssize_t ):c_int;
extern proc  PyUnicodeUCS4_FromEncodedObject( obj: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromObject( obj: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromFormatV( args2: c_string, args3: va_list ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromFormat( args2: c_string ):c_ptr(PyObject );
extern proc  _PyUnicode_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(Py_UNICODE ), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_FromWideChar( w: c_ptr(c_int ), size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsWideChar(_Py_ssize_t: Py_ssize_t, unicode: c_ptr(PyUnicodeObject ), w: c_ptr(c_int), size: Py_ssize_t ):Py_ssize_t;
extern proc  PyUnicodeUCS4_FromOrdinal( ordinal: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_ClearFreelist():c_int;
extern proc  _PyUnicodeUCS4_AsDefaultEncodedString( args2: c_ptr(PyObject ), args3: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_GetDefaultEncoding():c_string;
extern proc  PyUnicodeUCS4_SetDefaultEncoding(encoding: c_string ):c_int;
extern proc  PyUnicodeUCS4_Decode( s: c_string, size: Py_ssize_t, encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Encode( s: c_ptr(Py_UNICODE ), size: Py_ssize_t, encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsEncodedObject( unicode: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsEncodedString( unicode: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicode_BuildEncodingMap( _string :c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicode_DecodeUTF7( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicode_DecodeUTF7Stateful( _string :c_string, length: Py_ssize_t, errors: c_string, consumed: c_ptr(Py_ssize_t ) ):c_ptr(PyObject );
extern proc  PyUnicode_EncodeUTF7( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, base64SetO: c_int, base64WhiteSpace: c_int, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF8( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF8Stateful( _string :c_string, length: Py_ssize_t, errors: c_string, consumed: c_ptr(Py_ssize_t ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsUTF8String( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeUTF8( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF32( _string :c_string, length: Py_ssize_t, errors: c_string, byteorder: c_ptr(c_int) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF32Stateful( _string :c_string, length: Py_ssize_t, errors: c_string, byteorder: c_ptr(c_int), consumed: c_ptr(Py_ssize_t ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsUTF32String( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeUTF32( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, errors: c_string, byteorder: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF16( _string :c_string, length: Py_ssize_t, errors: c_string, byteorder: c_ptr(c_int) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUTF16Stateful( _string :c_string, length: Py_ssize_t, errors: c_string, byteorder: c_ptr(c_int), consumed: c_ptr(Py_ssize_t ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsUTF16String( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeUTF16( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, errors: c_string, byteorder: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeUnicodeEscape( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsUnicodeEscapeString( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeUnicodeEscape( data: c_ptr(Py_UNICODE ), length: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeRawUnicodeEscape( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsRawUnicodeEscapeString( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeRawUnicodeEscape( data: c_ptr(Py_UNICODE ), length: Py_ssize_t ):c_ptr(PyObject );
extern proc  _PyUnicode_DecodeUnicodeInternal( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeLatin1( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsLatin1String( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeLatin1( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeASCII( _string :c_string, length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsASCIIString( unicode: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeASCII( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_DecodeCharmap( _string :c_string, length: Py_ssize_t, mapping: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_AsCharmapString( unicode: c_ptr(PyObject ), mapping: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeCharmap( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, mapping: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_TranslateCharmap( data: c_ptr(Py_UNICODE ), length: Py_ssize_t, table: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_EncodeDecimal(s: c_ptr(Py_UNICODE ), length: Py_ssize_t, output: c_ptr(c_char), errors: c_string ):c_int;
extern proc  PyUnicodeUCS4_Concat( left: c_ptr(PyObject ), right: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Split( s: c_ptr(PyObject ), sep: c_ptr(PyObject ), maxsplit: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Splitlines( s: c_ptr(PyObject ), keepends: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Partition( s: c_ptr(PyObject ), sep: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_RPartition( s: c_ptr(PyObject ), sep: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_RSplit( s: c_ptr(PyObject ), sep: c_ptr(PyObject ), maxsplit: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Translate( str: c_ptr(PyObject ), table: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Join( separator: c_ptr(PyObject ), seq: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Tailmatch(_Py_ssize_t: Py_ssize_t, str: c_ptr(PyObject ), substr: c_ptr(PyObject ), start: Py_ssize_t, end: Py_ssize_t, direction: c_int ):Py_ssize_t;
extern proc  PyUnicodeUCS4_Find(_Py_ssize_t: Py_ssize_t, str: c_ptr(PyObject ), substr: c_ptr(PyObject ), start: Py_ssize_t, end: Py_ssize_t, direction: c_int ):Py_ssize_t;
extern proc  PyUnicodeUCS4_Count(_Py_ssize_t: Py_ssize_t, str: c_ptr(PyObject ), substr: c_ptr(PyObject ), start: Py_ssize_t, end: Py_ssize_t ):Py_ssize_t;
extern proc  PyUnicodeUCS4_Replace( str: c_ptr(PyObject ), substr: c_ptr(PyObject ), replstr: c_ptr(PyObject ), maxcount: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Compare(left: c_ptr(PyObject ), right: c_ptr(PyObject ) ):c_int;
extern proc  PyUnicodeUCS4_RichCompare( left: c_ptr(PyObject ), right: c_ptr(PyObject ), op: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Format( format: c_ptr(PyObject ), args: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeUCS4_Contains(container: c_ptr(PyObject ), element: c_ptr(PyObject ) ):c_int;
extern proc  _PyUnicode_XStrip( self: c_ptr(PyUnicodeObject ), striptype: c_int, sepobj: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyUnicodeUCS4_IsLowercase(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsUppercase(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsTitlecase(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsWhitespace(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsLinebreak(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_ToLowercase(_Py_UNICODE: Py_UNICODE, ch: Py_UNICODE ):Py_UNICODE;
extern proc  _PyUnicodeUCS4_ToUppercase(_Py_UNICODE: Py_UNICODE, ch: Py_UNICODE ):Py_UNICODE;
extern proc  _PyUnicodeUCS4_ToTitlecase(_Py_UNICODE: Py_UNICODE, ch: Py_UNICODE ):Py_UNICODE;
extern proc  _PyUnicodeUCS4_ToDecimalDigit(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_ToDigit(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_ToNumeric(ch: Py_UNICODE ): c_double;
extern proc  _PyUnicodeUCS4_IsDecimalDigit(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsDigit(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsNumeric(ch: Py_UNICODE ):c_int;
extern proc  _PyUnicodeUCS4_IsAlpha(ch: Py_UNICODE ):c_int;
extern record PyIntObject{
}

extern proc  PyInt_FromString( args2: c_ptr(c_char), args3: c_ptr(c_char ), args4: c_int ):c_ptr(PyObject );
extern proc  PyInt_FromUnicode( args2: c_ptr(Py_UNICODE ), args3: Py_ssize_t, args4: c_int ):c_ptr(PyObject );
extern proc  PyInt_FromLong( args2: c_long ):c_ptr(PyObject );
extern proc  PyInt_FromSize_t(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyInt_FromSsize_t( args2: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyInt_AsLong(args1: c_ptr(PyObject ) ):c_long;
extern proc  PyInt_AsSsize_t(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  _PyInt_AsInt(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyInt_AsUnsignedLongMask(args1: c_ptr(PyObject ) ):c_ulong;
extern proc  PyInt_AsUnsignedLongLongMask(args1: c_ptr(PyObject ) ):c_ulonglong;
extern proc  PyInt_GetMax():c_long;
extern proc  PyOS_strtoul(args1: c_ptr(c_char), args2: c_ptr(c_char ), args3: c_int ):c_ulong;
extern proc  PyOS_strtol(args1: c_ptr(c_char), args2: c_ptr(c_char ), args3: c_int ):c_long;
extern proc  PyInt_ClearFreeList():c_int;
extern proc  _PyInt_Format( v: c_ptr(PyIntObject ), base: c_int, newstyle: c_int ):c_ptr(PyObject );
extern proc  _PyInt_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(c_char), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern record PyBoolObject{
}

extern proc  PyBool_FromLong( args2: c_long ):c_ptr(PyObject );
extern "struct _longobject" record _longobject{
}

extern record PyLongObject{
}

extern proc  PyLong_FromLong( args2: c_long ):c_ptr(PyObject );
extern proc  PyLong_FromUnsignedLong( args2: c_ulong ):c_ptr(PyObject );
extern proc  PyLong_FromDouble( args2: c_double ):c_ptr(PyObject );
extern proc  PyLong_FromSize_t(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyLong_FromSsize_t( args2: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyLong_AsLong(args1: c_ptr(PyObject ) ):c_long;
extern proc  PyLong_AsLongAndOverflow(args1: c_ptr(PyObject ), args2: c_ptr(c_int) ):c_long;
extern proc  PyLong_AsUnsignedLong(args1: c_ptr(PyObject ) ):c_ulong;
extern proc  PyLong_AsUnsignedLongMask(args1: c_ptr(PyObject ) ):c_ulong;
extern proc  PyLong_AsSsize_t(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  _PyLong_AsInt(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyLong_GetInfo(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  _PyLong_Frexp(a: c_ptr(PyLongObject ), e: c_ptr(Py_ssize_t ) ): c_double;
extern proc  PyLong_AsDouble(args1: c_ptr(PyObject ) ): c_double;
extern proc  PyLong_FromVoidPtr( args2: c_void_ptr ):c_ptr(PyObject );
extern proc  PyLong_AsVoidPtr(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyLong_FromLongLong( args2: c_longlong ):c_ptr(PyObject );
extern proc  PyLong_FromUnsignedLongLong( args2: c_ulonglong ):c_ptr(PyObject );
extern proc  PyLong_AsLongLong(args1: c_ptr(PyObject ) ):c_longlong;
extern proc  PyLong_AsUnsignedLongLong(args1: c_ptr(PyObject ) ):c_ulonglong;
extern proc  PyLong_AsUnsignedLongLongMask(args1: c_ptr(PyObject ) ):c_ulonglong;
extern proc  PyLong_AsLongLongAndOverflow(args1: c_ptr(PyObject ), args2: c_ptr(c_int) ):c_longlong;
extern proc  PyLong_FromString( args2: c_ptr(c_char), args3: c_ptr(c_char ), args4: c_int ):c_ptr(PyObject );
extern proc  PyLong_FromUnicode( args2: c_ptr(Py_UNICODE ), args3: Py_ssize_t, args4: c_int ):c_ptr(PyObject );
extern proc  _PyLong_Sign(v: c_ptr(PyObject ) ):c_int;
extern proc  _PyLong_NumBits():c_int;
extern proc  _PyLong_FromByteArray( bytes: c_ptr(c_uchar), n: c_int, little_endian: c_int, is_signed: c_int ):c_ptr(PyObject );
extern proc  _PyLong_AsByteArray(v: c_ptr(PyLongObject ), bytes: c_ptr(c_uchar), n: c_int, little_endian: c_int, is_signed: c_int ):c_int;
extern proc  _PyLong_Format( aa: c_ptr(PyObject ), base: c_int, addL: c_int, newstyle: c_int ):c_ptr(PyObject );
extern proc  _PyLong_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(c_char), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern record PyFloatObject{
}

extern proc  PyFloat_GetMax(): c_double;
extern proc  PyFloat_GetMin(): c_double;
extern proc  PyFloat_GetInfo(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyFloat_FromString( args2: c_ptr(PyObject ), junk: c_ptr(c_char ) ):c_ptr(PyObject );
extern proc  PyFloat_FromDouble( args2: c_double ):c_ptr(PyObject );
extern proc  PyFloat_AsDouble(args1: c_ptr(PyObject ) ): c_double;
extern proc  PyFloat_AsReprString(args1: c_ptr(c_char), v: c_ptr(PyFloatObject ) ):c_void_ptr;
extern proc  PyFloat_AsString(args1: c_ptr(c_char), v: c_ptr(PyFloatObject ) ):c_void_ptr;
extern proc  _PyFloat_Pack4(x: c_double, p: c_ptr(c_uchar), le: c_int ):c_int;
extern proc  _PyFloat_Pack8(x: c_double, p: c_ptr(c_uchar), le: c_int ):c_int;
extern proc  _PyFloat_Digits(buf: c_ptr(c_char), v: c_double, signum: c_ptr(c_int) ):c_int;
extern proc  _PyFloat_DigitsInit():c_void_ptr;
extern proc  _PyFloat_Unpack4(p: c_ptr(c_uchar), le: c_int ): c_double;
extern proc  _PyFloat_Unpack8(p: c_ptr(c_uchar), le: c_int ): c_double;
extern proc  PyFloat_ClearFreeList():c_int;
extern proc  _PyFloat_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(c_char), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern proc  _Py_double_round( x: c_double, ndigits: c_int ):c_ptr(PyObject );
extern record Py_complex{
}

extern proc  _Py_c_sum(_Py_complex: Py_complex, args2: Py_complex, args3: Py_complex ):Py_complex;
extern proc  _Py_c_diff(_Py_complex: Py_complex, args2: Py_complex, args3: Py_complex ):Py_complex;
extern proc  _Py_c_neg(_Py_complex: Py_complex, args2: Py_complex ):Py_complex;
extern proc  _Py_c_prod(_Py_complex: Py_complex, args2: Py_complex, args3: Py_complex ):Py_complex;
extern proc  _Py_c_quot(_Py_complex: Py_complex, args2: Py_complex, args3: Py_complex ):Py_complex;
extern proc  _Py_c_pow(_Py_complex: Py_complex, args2: Py_complex, args3: Py_complex ):Py_complex;
extern proc  _Py_c_abs(args1: Py_complex ): c_double;
extern record PyComplexObject{
}

extern proc  PyComplex_FromCComplex( args2: Py_complex ):c_ptr(PyObject );
extern proc  PyComplex_FromDoubles( _real: c_double, _imag: c_double ):c_ptr(PyObject );
extern proc  PyComplex_RealAsDouble(op: c_ptr(PyObject ) ): c_double;
extern proc  PyComplex_ImagAsDouble(op: c_ptr(PyObject ) ): c_double;
extern proc  PyComplex_AsCComplex(_Py_complex: Py_complex, op: c_ptr(PyObject ) ):Py_complex;
extern proc  _PyComplex_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(c_char), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern record PyStringObject{
}

extern proc  PyString_FromStringAndSize( args2: c_string, args3: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyString_FromString( args2: c_string ):c_ptr(PyObject );
extern proc  PyString_FromFormatV(  args3: c_string, args4: va_list ):c_ptr(PyObject );
extern proc  PyString_FromFormat(  args3: c_string ):c_ptr(PyObject );
extern proc  PyString_Size(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyString_AsString(args1: c_ptr(PyObject ) ):c_ptr(c_char);
extern proc  PyString_Repr( args2: c_ptr(PyObject ), args3: c_int ):c_ptr(PyObject );
extern proc  PyString_Concat(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyString_ConcatAndDel(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _PyString_Resize(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  _PyString_Eq(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyString_Format( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyString_FormatLong( args2: c_ptr(PyObject ), args3: c_int, args4: c_int, args5: c_int, args6: c_ptr(c_char ), args7: c_ptr(c_int) ):c_ptr(PyObject );
extern proc  PyString_DecodeEscape( args2: c_string, args3: Py_ssize_t, args4: c_string, args5: Py_ssize_t, args6: c_string ):c_ptr(PyObject );
extern proc  PyString_InternInPlace(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyString_InternImmortal(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyString_InternFromString( args2: c_string ):c_ptr(PyObject );
extern proc  _Py_ReleaseInternedStrings():c_void_ptr;
extern proc  _PyString_Join( sep: c_ptr(PyObject ), x: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyString_Decode( s: c_string, size: Py_ssize_t, encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_Encode( s: c_string, size: Py_ssize_t, encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_AsEncodedObject( str: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_AsEncodedString( str: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_AsDecodedObject( str: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_AsDecodedString( str: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyString_AsStringAndSize(obj: c_ptr(PyObject ), s: c_ptr(c_char ), len: c_ptr(Py_ssize_t ) ):c_int;
extern proc  _PyString_InsertThousandsGroupingLocale(_Py_ssize_t: Py_ssize_t, buffer: c_ptr(c_char), n_buffer: Py_ssize_t, digits: c_ptr(c_char), n_digits: Py_ssize_t, min_width: Py_ssize_t ):Py_ssize_t;
extern proc  _PyString_InsertThousandsGrouping(_Py_ssize_t: Py_ssize_t, buffer: c_ptr(c_char), n_buffer: Py_ssize_t, digits: c_ptr(c_char), n_digits: Py_ssize_t, min_width: Py_ssize_t, grouping: c_string, thousands_sep: c_string ):Py_ssize_t;
extern proc  _PyBytes_FormatAdvanced( obj: c_ptr(PyObject ), format_spec: c_ptr(c_char), format_spec_len: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyMemoryView_GetContiguous( base: c_ptr(PyObject ), buffertype: c_int, fort: c_char ):c_ptr(PyObject );
extern proc  PyMemoryView_FromObject( base: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyMemoryView_FromBuffer( info: c_ptr(Py_buffer ) ):c_ptr(PyObject );
extern record PyMemoryViewObject{
}

extern proc  PyBuffer_FromObject( base: c_ptr(PyObject ), offset: Py_ssize_t, size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyBuffer_FromReadWriteObject( base: c_ptr(PyObject ), offset: Py_ssize_t, size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyBuffer_FromMemory( ptr: c_void_ptr, size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyBuffer_FromReadWriteMemory( ptr: c_void_ptr, size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyBuffer_New( size: Py_ssize_t ):c_ptr(PyObject );
extern record PyByteArrayObject{
}

extern proc  PyByteArray_FromObject( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyByteArray_Concat( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyByteArray_FromStringAndSize( args2: c_string, args3: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyByteArray_Size(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyByteArray_AsString(args1: c_ptr(PyObject ) ):c_ptr(c_char);
extern proc  PyByteArray_Resize(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern record PyTupleObject{
}

extern proc  PyTuple_New( size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyTuple_Size(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyTuple_GetItem( args2: c_ptr(PyObject ), args3: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyTuple_SetItem(args1: c_ptr(PyObject ), args2: Py_ssize_t, args3: c_ptr(PyObject ) ):c_int;
extern proc  PyTuple_GetSlice( args2: c_ptr(PyObject ), args3: Py_ssize_t, args4: Py_ssize_t ):c_ptr(PyObject );
extern proc  _PyTuple_Resize(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyTuple_Pack( args2: Py_ssize_t ):c_ptr(PyObject );
extern proc  _PyTuple_MaybeUntrack(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyTuple_ClearFreeList():c_int;
extern record PyListObject{
}

extern proc  PyList_New( size: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyList_Size(_Py_ssize_t: Py_ssize_t, args2: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyList_GetItem( args2: c_ptr(PyObject ), args3: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyList_SetItem(args1: c_ptr(PyObject ), args2: Py_ssize_t, args3: c_ptr(PyObject ) ):c_int;
extern proc  PyList_Insert(args1: c_ptr(PyObject ), args2: Py_ssize_t, args3: c_ptr(PyObject ) ):c_int;
extern proc  PyList_Append(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyList_GetSlice( args2: c_ptr(PyObject ), args3: Py_ssize_t, args4: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyList_SetSlice(args1: c_ptr(PyObject ), args2: Py_ssize_t, args3: Py_ssize_t, args4: c_ptr(PyObject ) ):c_int;
extern proc  PyList_Sort(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyList_Reverse(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyList_AsTuple( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyList_Extend( args2: c_ptr(PyListObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern record PyDictEntry{
}

extern "struct _dictobject" record _dictobject{
}

extern record PyDictObject{
}


extern proc  PyDict_New(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyDict_GetItem( mp: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyDict_GetItemWithError( mp: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyDict_SetItem(mp: c_ptr(PyObject ), key: c_ptr(PyObject ), item: c_ptr(PyObject ) ):c_int;
extern proc  PyDict_DelItem(mp: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  PyDict_Clear(mp: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyDict_Next(mp: c_ptr(PyObject ), pos: c_ptr(Py_ssize_t ), key: c_ptr(PyObject ), value: c_ptr(PyObject ) ):c_int;
extern proc  _PyDict_Next(mp: c_ptr(PyObject ), pos: c_ptr(Py_ssize_t ), key: c_ptr(PyObject ), value: c_ptr(PyObject ), hash: c_ptr(c_long) ):c_int;
extern proc  PyDict_Keys( mp: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyDict_Values( mp: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyDict_Items( mp: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyDict_Size(_Py_ssize_t: Py_ssize_t, mp: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyDict_Copy( mp: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyDict_Contains(mp: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  _PyDict_Contains(mp: c_ptr(PyObject ), key: c_ptr(PyObject ), hash: c_long ):c_int;
extern proc  _PyDict_NewPresized( minused: Py_ssize_t ):c_ptr(PyObject );
extern proc  _PyDict_MaybeUntrack(mp: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyDict_Update(mp: c_ptr(PyObject ), other: c_ptr(PyObject ) ):c_int;
extern proc  PyDict_Merge(mp: c_ptr(PyObject ), other: c_ptr(PyObject ), override: c_int ):c_int;
extern proc  PyDict_MergeFromSeq2(d: c_ptr(PyObject ), seq2: c_ptr(PyObject ), override: c_int ):c_int;
extern proc  PyDict_GetItemString( dp: c_ptr(PyObject ), key: c_string ):c_ptr(PyObject );
extern proc  PyDict_SetItemString(dp: c_ptr(PyObject ), key: c_string, item: c_ptr(PyObject ) ):c_int;
extern proc  PyDict_DelItemString(dp: c_ptr(PyObject ), key: c_string ):c_int;
extern record setentry{
}

extern "struct _setobject" record _setobject{
}

extern record PySetObject{
}


extern proc  PySet_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFrozenSet_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PySet_Size(_Py_ssize_t: Py_ssize_t, anyset: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PySet_Clear(set: c_ptr(PyObject ) ):c_int;
extern proc  PySet_Contains(anyset: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  PySet_Discard(set: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  PySet_Add(set: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  _PySet_Next(set: c_ptr(PyObject ), pos: c_ptr(Py_ssize_t ), key: c_ptr(PyObject ) ):c_int;
extern proc  _PySet_NextEntry(set: c_ptr(PyObject ), pos: c_ptr(Py_ssize_t ), key: c_ptr(PyObject ), hash: c_ptr(c_long) ):c_int;
extern proc  PySet_Pop( set: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PySet_Update(set: c_ptr(PyObject ), iterable: c_ptr(PyObject ) ):c_int;
extern record PyCFunction{
}

extern record PyCFunctionWithKeywords{
}

extern record PyNoArgsFunction{
}

extern proc  PyCFunction_GetFunction(_PyCFunction: PyCFunction, args2: c_ptr(PyObject ) ):PyCFunction;
extern proc  PyCFunction_GetSelf( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCFunction_GetFlags(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyCFunction_Call( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern "struct PyMethodDef" record PyMethodDef{
	
}


extern proc  Py_FindMethod( args2: PyMethodDef [], args3: c_ptr(PyObject ), args4: c_string ):c_ptr(PyObject );
extern proc  PyCFunction_NewEx( args2: c_ptr(PyMethodDef ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern "struct PyMethodChain" record PyMethodChain{
	
}



extern proc  Py_FindMethodInChain( args2: c_ptr(PyMethodChain ), args3: c_ptr(PyObject ), args4: c_string ):c_ptr(PyObject );
extern record PyCFunctionObject{
}

extern proc  PyCFunction_ClearFreeList():c_int;
extern proc  PyModule_New( args2: c_string ):c_ptr(PyObject );
extern proc  PyModule_GetDict( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyModule_GetName(args1: c_ptr(PyObject ) ):c_ptr(c_char);
extern proc  PyModule_GetFilename(args1: c_ptr(PyObject ) ):c_ptr(c_char);
extern proc  _PyModule_Clear(args1: c_ptr(PyObject ) ):c_void_ptr;
extern record PyFunctionObject{
}

extern proc  PyFunction_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_GetCode( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_GetGlobals( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_GetModule( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_GetDefaults( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_SetDefaults(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyFunction_GetClosure( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFunction_SetClosure(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyClassMethod_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyStaticMethod_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern record PyClassObject{
}

extern record PyInstanceObject{
}

extern record PyMethodObject{
}

extern proc  PyClass_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyInstance_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyInstance_NewRaw( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyMethod_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyMethod_Function( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyMethod_Self( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyMethod_Class( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyInstance_Lookup( pinst: c_ptr(PyObject ), name: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyClass_IsSubclass(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyMethod_ClearFreeList():c_int;
extern record PyFileObject{
}

extern proc  PyFile_FromString( args2: c_ptr(c_char), args3: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PyFile_SetBufSize(args1: c_ptr(PyObject ), args2: c_int ):c_void_ptr;
extern proc  PyFile_SetEncoding(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyFile_SetEncodingAndErrors(args1: c_ptr(PyObject ), args2: c_string, errors: c_ptr(c_char) ):c_int;
extern proc  PyFile_FromFile( args2: c_ptr(FILE ), args3: c_ptr(c_char), args4: c_ptr(c_char), args5: c_ptr(int ()(FILE )) ):c_ptr(PyObject );
extern proc  PyFile_AsFile(_FILE: FILE, args2: c_ptr(PyObject ) ):c_ptr(FILE );
extern proc  PyFile_IncUseCount(args1: c_ptr(PyFileObject ) ):c_void_ptr;
extern proc  PyFile_DecUseCount(args1: c_ptr(PyFileObject ) ):c_void_ptr;
extern proc  PyFile_Name( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyFile_GetLine( args2: c_ptr(PyObject ), args3: c_int ):c_ptr(PyObject );
extern proc  PyFile_WriteObject(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_int ):c_int;
extern proc  PyFile_SoftSpace(args1: c_ptr(PyObject ), args2: c_int ):c_int;
extern proc  PyFile_WriteString(args1: c_string, args2: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_AsFileDescriptor(args1: c_ptr(PyObject ) ):c_int;
extern proc  Py_UniversalNewlineFgets(args1: c_ptr(c_char), args2: c_int, args3: c_ptr(FILE ), args4: c_ptr(PyObject ) ):c_ptr(c_char);
extern proc  Py_UniversalNewlineFread():c_int;
extern proc  _PyFile_SanitizeMode(mode: c_ptr(c_char) ):c_int;
extern proc  PyCObject_FromVoidPtr( cobj: c_void_ptr, destruct: c_ptr(void ()(void )) ):c_ptr(PyObject );
extern proc  PyCObject_FromVoidPtrAndDesc( cobj: c_void_ptr, desc: c_void_ptr, destruct: c_ptr(void ()(void , void )) ):c_ptr(PyObject );
extern proc  PyCObject_AsVoidPtr(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyCObject_GetDesc(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyCObject_Import(module_name: c_ptr(c_char), cobject_name: c_ptr(c_char) ):c_void_ptr;
extern proc  PyCObject_SetVoidPtr(self: c_ptr(PyObject ), cobj: c_void_ptr ):c_int;
extern record PyCObject{
}

extern record PyCapsule_Destructor{
}

extern proc  PyCapsule_New( pointer: c_void_ptr, name: c_string, destructor: PyCapsule_Destructor ):c_ptr(PyObject );
extern proc  PyCapsule_GetPointer(capsule: c_ptr(PyObject ), name: c_string ):c_void_ptr;
extern proc  PyCapsule_GetDestructor(_PyCapsule_Destructor: PyCapsule_Destructor, capsule: c_ptr(PyObject ) ):PyCapsule_Destructor;
extern proc  PyCapsule_GetName(capsule: c_ptr(PyObject ) ):c_string;
extern proc  PyCapsule_GetContext(capsule: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyCapsule_IsValid(capsule: c_ptr(PyObject ), name: c_string ):c_int;
extern proc  PyCapsule_SetPointer(capsule: c_ptr(PyObject ), pointer: c_void_ptr ):c_int;
extern proc  PyCapsule_SetDestructor(capsule: c_ptr(PyObject ), destructor: PyCapsule_Destructor ):c_int;
extern proc  PyCapsule_SetName(capsule: c_ptr(PyObject ), name: c_string ):c_int;
extern proc  PyCapsule_SetContext(capsule: c_ptr(PyObject ), context: c_void_ptr ):c_int;
extern proc  PyCapsule_Import(name: c_string, no_block: c_int ):c_void_ptr;
extern "struct _frame" record _frame{
}

extern "struct _traceback" record _traceback{
	
}

extern record PyTracebackObject{
}

extern proc  PyTraceBack_Here(args1: c_ptr(_frame ) ):c_int;
extern proc  PyTraceBack_Print(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  _Py_DisplaySourceLine(args1: c_ptr(PyObject ), args2: c_string, args3: c_int, args4: c_int ):c_int;
extern record PySliceObject{
}

extern proc  PySlice_New( start: c_ptr(PyObject ), stop: c_ptr(PyObject ), step: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PySlice_FromIndices( start: Py_ssize_t, stop: Py_ssize_t ):c_ptr(PyObject );
extern proc  PySlice_GetIndices(r: c_ptr(PySliceObject ), length: Py_ssize_t, start: c_ptr(Py_ssize_t ), stop: c_ptr(Py_ssize_t ), step: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PySlice_GetIndicesEx(r: c_ptr(PySliceObject ), length: Py_ssize_t, start: c_ptr(Py_ssize_t ), stop: c_ptr(Py_ssize_t ), step: c_ptr(Py_ssize_t ), slicelength: c_ptr(Py_ssize_t ) ):c_int;
extern record PyCellObject{
}

extern proc  PyCell_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCell_Get( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCell_Set(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PySeqIter_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCallIter_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );

extern record PyGenObject{
}

extern proc  PyGen_New( args2: c_ptr(_frame ) ):c_ptr(PyObject );
extern proc  PyGen_NeedsFinalizing(args1: c_ptr(PyGenObject ) ):c_int;
extern record getter{
}

extern record setter{
}

extern "struct PyGetSetDef" record PyGetSetDef{

}



extern record wrapperfunc{
}

extern record wrapperfunc_kwds{
}

extern "struct wrapperbase" record wrapperbase{
	
}

extern record PyDescrObject{
}

extern record PyMethodDescrObject{
}

extern record PyMemberDescrObject{
}

extern record PyGetSetDescrObject{
}

extern record PyWrapperDescrObject{
}

extern proc  PyDescr_NewMethod( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyMethodDef ) ):c_ptr(PyObject );
extern proc  PyDescr_NewClassMethod( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyMethodDef ) ):c_ptr(PyObject );
extern proc  PyDescr_NewMember( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyMemberDef ) ):c_ptr(PyObject );
extern proc  PyDescr_NewGetSet( args2: c_ptr(PyTypeObject ), args3: c_ptr(PyGetSetDef ) ):c_ptr(PyObject );
extern proc  PyDescr_NewWrapper( args2: c_ptr(PyTypeObject ), args3: c_ptr(wrapperbase ), args4: c_void_ptr ):c_ptr(PyObject );
extern proc  PyDictProxy_New( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyWrapper_New( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyWarnings_Init():c_void_ptr;
extern proc  PyErr_WarnEx(args1: c_ptr(PyObject ), args2: c_string, args3: Py_ssize_t ):c_int;
extern proc  PyErr_WarnExplicit(args1: c_ptr(PyObject ), args2: c_string, args3: c_string, args4: c_int, args5: c_string, args6: c_ptr(PyObject ) ):c_int;


extern record PyWeakReference{
}

extern "struct _PyWeakReference" record _PyWeakReference{
	
}

extern proc  PyWeakref_NewRef( ob: c_ptr(PyObject ), callback: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyWeakref_NewProxy( ob: c_ptr(PyObject ), callback: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyWeakref_GetObject( _ref: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyWeakref_GetWeakrefCount(_Py_ssize_t: Py_ssize_t, head: c_ptr(PyWeakReference ) ):Py_ssize_t;
extern proc  _PyWeakref_ClearRef(self: c_ptr(PyWeakReference ) ):c_void_ptr;
extern proc  PyCodec_Register(search_function: c_ptr(PyObject ) ):c_int;
extern proc  _PyCodec_Lookup( encoding: c_string ):c_ptr(PyObject );
extern proc  PyCodec_Encode( object: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_Decode( object: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  _PyCodec_LookupTextEncoding( encoding: c_string, alternate_command: c_string ):c_ptr(PyObject );
extern proc  _PyCodec_EncodeText( object: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  _PyCodec_DecodeText( object: c_ptr(PyObject ), encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  _PyCodecInfo_GetIncrementalDecoder( codec_info: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  _PyCodecInfo_GetIncrementalEncoder( codec_info: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_Encoder( encoding: c_string ):c_ptr(PyObject );
extern proc  PyCodec_Decoder( encoding: c_string ):c_ptr(PyObject );
extern proc  PyCodec_IncrementalEncoder( encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_IncrementalDecoder( encoding: c_string, errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_StreamReader( encoding: c_string, stream: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_StreamWriter( encoding: c_string, stream: c_ptr(PyObject ), errors: c_string ):c_ptr(PyObject );
extern proc  PyCodec_RegisterError(name: c_string, error: c_ptr(PyObject ) ):c_int;
extern proc  PyCodec_LookupError( name: c_string ):c_ptr(PyObject );
extern proc  PyCodec_StrictErrors( exc: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCodec_IgnoreErrors( exc: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCodec_ReplaceErrors( exc: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCodec_XMLCharRefReplaceErrors( exc: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCodec_BackslashReplaceErrors( exc: c_ptr(PyObject ) ):c_ptr(PyObject );
extern record PyBaseExceptionObject{
}

extern record PySyntaxErrorObject{
}

extern record PyUnicodeErrorObject{
}

extern record PySystemExitObject{
}

extern record PyEnvironmentErrorObject{
}

extern proc  PyErr_SetNone(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_SetObject(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_SetString(args1: c_ptr(PyObject ), args2: c_string ):c_void_ptr;
extern proc  PyErr_Occurred(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyErr_Clear():c_void_ptr;
extern proc  PyErr_Fetch(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_Restore(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_GivenExceptionMatches(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ) ):c_int;
extern proc  PyErr_ExceptionMatches(args1: c_ptr(PyObject ) ):c_int;
extern proc  PyErr_NormalizeException(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_void_ptr;
extern proc  _PyErr_ReplaceException(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_BadArgument():c_int;
extern proc  PyErr_NoMemory(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyErr_SetFromErrno( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyErr_SetFromErrnoWithFilenameObject( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyErr_SetFromErrnoWithFilename( args2: c_ptr(PyObject ), args3: c_string ):c_ptr(PyObject );
extern proc  PyErr_Format(  args3: c_ptr(PyObject ), args4: c_string ):c_ptr(PyObject );
extern proc  PyErr_BadInternalCall():c_void_ptr;
extern proc  _PyErr_BadInternalCall(filename: c_string, lineno: c_int ):c_void_ptr;
extern proc  PyErr_NewException( name: c_ptr(c_char), base: c_ptr(PyObject ), dict: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyErr_NewExceptionWithDoc( name: c_ptr(c_char), doc: c_ptr(c_char), base: c_ptr(PyObject ), dict: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyErr_WriteUnraisable(args1: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyErr_CheckSignals():c_int;
extern proc  PyErr_SetInterrupt():c_void_ptr;
extern proc  PySignal_SetWakeupFd(fd: c_int ):c_int;
extern proc  PyErr_SyntaxLocation(args1: c_string, args2: c_int ):c_void_ptr;
extern proc  PyErr_ProgramText( args2: c_string, args3: c_int ):c_ptr(PyObject );
extern proc  PyUnicodeDecodeError_Create( args2: c_string, args3: c_string, args4: Py_ssize_t, args5: Py_ssize_t, args6: Py_ssize_t, args7: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeEncodeError_Create( args2: c_string, args3: c_ptr(Py_UNICODE ), args4: Py_ssize_t, args5: Py_ssize_t, args6: Py_ssize_t, args7: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeTranslateError_Create( args2: c_ptr(Py_UNICODE ), args3: Py_ssize_t, args4: Py_ssize_t, args5: Py_ssize_t, args6: c_string ):c_ptr(PyObject );
extern proc  PyUnicodeEncodeError_GetEncoding( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeDecodeError_GetEncoding( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeEncodeError_GetObject( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeDecodeError_GetObject( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeTranslateError_GetObject( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeEncodeError_GetStart(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeDecodeError_GetStart(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeTranslateError_GetStart(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeEncodeError_SetStart(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeDecodeError_SetStart(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeTranslateError_SetStart(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeEncodeError_GetEnd(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeDecodeError_GetEnd(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeTranslateError_GetEnd(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyUnicodeEncodeError_SetEnd(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeDecodeError_SetEnd(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeTranslateError_SetEnd(args1: c_ptr(PyObject ), args2: Py_ssize_t ):c_int;
extern proc  PyUnicodeEncodeError_GetReason( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeDecodeError_GetReason( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeTranslateError_GetReason( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyUnicodeEncodeError_SetReason(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyUnicodeDecodeError_SetReason(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyUnicodeTranslateError_SetReason(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyOS_snprintf( str: c_ptr(c_char), size: c_int, format: c_string ):c_int;
extern proc  PyOS_vsnprintf( str: c_ptr(c_char), size: c_int, format: c_string, va: va_list ):c_int;
extern "struct _ts" record _ts{
}



extern "struct _is" record _is{

}

extern record PyInterpreterState{
}


extern record Py_tracefunc{
}


extern record PyThreadState{
}

extern proc  PyInterpreterState_New(_PyInterpreterState: PyInterpreterState ):c_ptr(PyInterpreterState );
extern proc  PyInterpreterState_Clear(args1: c_ptr(PyInterpreterState ) ):c_void_ptr;
extern proc  PyInterpreterState_Delete(args1: c_ptr(PyInterpreterState ) ):c_void_ptr;
extern proc  PyThreadState_New(_PyThreadState: PyThreadState, args2: c_ptr(PyInterpreterState ) ):c_ptr(PyThreadState );
extern proc  _PyThreadState_Prealloc(_PyThreadState: PyThreadState, args2: c_ptr(PyInterpreterState ) ):c_ptr(PyThreadState );
extern proc  _PyThreadState_Init(args1: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyThreadState_Clear(args1: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyThreadState_Delete(args1: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyThreadState_DeleteCurrent():c_void_ptr;
extern proc  PyThreadState_Get(_PyThreadState: PyThreadState ):c_ptr(PyThreadState );
extern proc  PyThreadState_Swap(_PyThreadState: PyThreadState, args2: c_ptr(PyThreadState ) ):c_ptr(PyThreadState );
extern proc  PyThreadState_GetDict(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyThreadState_SetAsyncExc(args1: c_long, args2: c_ptr(PyObject ) ):c_int;
extern record PyGILState_STATE{
}

extern proc  PyGILState_Ensure(_PyGILState_STATE: PyGILState_STATE ):PyGILState_STATE;
extern proc  PyGILState_Release(args1: PyGILState_STATE ):c_void_ptr;
extern proc  PyGILState_GetThisThreadState(_PyThreadState: PyThreadState ):c_ptr(PyThreadState );
extern proc  _PyThread_CurrentFrames(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyInterpreterState_Head(_PyInterpreterState: PyInterpreterState ):c_ptr(PyInterpreterState );
extern proc  PyInterpreterState_Next(_PyInterpreterState: PyInterpreterState, args2: c_ptr(PyInterpreterState ) ):c_ptr(PyInterpreterState );
extern proc  PyInterpreterState_ThreadHead(_PyThreadState: PyThreadState, args2: c_ptr(PyInterpreterState ) ):c_ptr(PyThreadState );
extern proc  PyThreadState_Next(_PyThreadState: PyThreadState, args2: c_ptr(PyThreadState ) ):c_ptr(PyThreadState );
extern record PyThreadFrameGetter{
}

extern "struct _arena" record _arena{
}

extern record PyArena{
}

extern proc  PyArena_New(_PyArena: PyArena ):c_ptr(PyArena );
extern proc  PyArena_Free(args1: c_ptr(PyArena ) ):c_void_ptr;
extern proc  PyArena_Malloc(args1: c_ptr(PyArena ), size: c_int ):c_void_ptr;
extern proc  PyArena_AddPyObject(args1: c_ptr(PyArena ), args2: c_ptr(PyObject ) ):c_int;
extern proc  _Py_VaBuildValue_SizeT( args2: c_string, args3: va_list ):c_ptr(PyObject );
extern proc  PyArg_Parse(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyArg_ParseTuple(args1: c_ptr(PyObject ), args2: c_string ):c_int;
extern proc  PyArg_ParseTupleAndKeywords(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_string, args4: c_ptr(c_char ) ):c_int;
extern proc  PyArg_UnpackTuple(args1: c_ptr(PyObject ), args2: c_string, args3: Py_ssize_t, args4: Py_ssize_t ):c_int;
extern proc  Py_BuildValue( args2: c_string ):c_ptr(PyObject );
extern proc  _Py_BuildValue_SizeT( args2: c_string ):c_ptr(PyObject );
extern proc  _PyArg_NoKeywords(funcname: c_string, kw: c_ptr(PyObject ) ):c_int;
extern proc  PyArg_VaParse(args1: c_ptr(PyObject ), args2: c_string, args3: va_list ):c_int;
extern proc  PyArg_VaParseTupleAndKeywords(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_string, args4: c_ptr(c_char ), args5: va_list ):c_int;
extern proc  Py_VaBuildValue( args2: c_string, args3: va_list ):c_ptr(PyObject );
extern proc  PyModule_AddObject(args1: c_ptr(PyObject ), args2: c_string, args3: c_ptr(PyObject ) ):c_int;
extern proc  PyModule_AddIntConstant(args1: c_ptr(PyObject ), args2: c_string, args3: c_long ):c_int;
extern proc  PyModule_AddStringConstant(args1: c_ptr(PyObject ), args2: c_string, args3: c_string ):c_int;
extern proc  Py_InitModule4_64( name: c_string, methods: c_ptr(PyMethodDef ), doc: c_string, self: c_ptr(PyObject ), apiver: c_int ):c_ptr(PyObject );
extern record PyCompilerFlags{
}

extern proc  Py_SetProgramName(args1: c_ptr(c_char) ):c_void_ptr;
extern proc  Py_GetProgramName():c_ptr(c_char);
extern proc  Py_SetPythonHome(args1: c_ptr(c_char) ):c_void_ptr;
extern proc  Py_GetPythonHome():c_ptr(c_char);
extern proc  Py_Initialize():c_void_ptr;
extern proc  Py_InitializeEx(args1: c_int ):c_void_ptr;
extern proc  Py_Finalize():c_void_ptr;
extern proc  Py_IsInitialized():c_int;
extern proc  Py_NewInterpreter(_PyThreadState: PyThreadState ):c_ptr(PyThreadState );
extern proc  Py_EndInterpreter(args1: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyRun_AnyFileFlags(args1: c_ptr(FILE ), args2: c_string, args3: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  PyRun_AnyFileExFlags(args1: c_ptr(FILE ), args2: c_string, args3: c_int, args4: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  PyRun_SimpleStringFlags(args1: c_string, args2: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  PyRun_SimpleFileExFlags(args1: c_ptr(FILE ), args2: c_string, args3: c_int, args4: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  PyRun_InteractiveOneFlags(args1: c_ptr(FILE ), args2: c_string, args3: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  PyRun_InteractiveLoopFlags(args1: c_ptr(FILE ), args2: c_string, args3: c_ptr(PyCompilerFlags ) ):c_int;
extern "struct _mod" record _mod{
}

extern proc  PyParser_ASTFromString(_struct_mod: _mod, args2: c_string, args3: c_string, args4: c_int, flags: c_ptr(PyCompilerFlags ), args6: c_ptr(PyArena ) ):c_ptr(_mod );
extern proc  PyParser_ASTFromFile(_struct_mod: _mod, args2: c_ptr(FILE ), args3: c_string, args4: c_int, args5: c_ptr(c_char), args6: c_ptr(c_char), args7: c_ptr(PyCompilerFlags ), args8: c_ptr(c_int), args9: c_ptr(PyArena ) ):c_ptr(_mod );
extern "struct _node" record _node{
}

extern proc  PyParser_SimpleParseStringFlags(_struct_node: _node, args2: c_string, args3: c_int, args4: c_int ):c_ptr(_node );
extern proc  PyParser_SimpleParseFileFlags(_struct_node: _node, args2: c_ptr(FILE ), args3: c_string, args4: c_int, args5: c_int ):c_ptr(_node );
extern proc  PyRun_StringFlags( args2: c_string, args3: c_int, args4: c_ptr(PyObject ), args5: c_ptr(PyObject ), args6: c_ptr(PyCompilerFlags ) ):c_ptr(PyObject );
extern proc  PyRun_FileExFlags( args2: c_ptr(FILE ), args3: c_string, args4: c_int, args5: c_ptr(PyObject ), args6: c_ptr(PyObject ), args7: c_int, args8: c_ptr(PyCompilerFlags ) ):c_ptr(PyObject );
extern proc  Py_CompileStringFlags( args2: c_string, args3: c_string, args4: c_int, args5: c_ptr(PyCompilerFlags ) ):c_ptr(PyObject );
extern "struct symtable" record symtable{
}

extern proc  Py_SymtableString(_struct_symtable: symtable, args2: c_string, args3: c_string, args4: c_int ):c_ptr(symtable );
extern proc  PyErr_Print():c_void_ptr;
extern proc  PyErr_PrintEx(args1: c_int ):c_void_ptr;
extern proc  PyErr_Display(args1: c_ptr(PyObject ), args2: c_ptr(PyObject ), args3: c_ptr(PyObject ) ):c_void_ptr;
extern proc  Py_AtExit(func: c_ptr(void ()(void)) ):c_int;
extern proc  Py_Exit(args1: c_int ):c_void_ptr;
extern proc  Py_FdIsInteractive(args1: c_ptr(FILE ), args2: c_string ):c_int;
extern proc  Py_Main(argc: c_int, argv: c_ptr(c_char ) ):c_int;
extern proc  Py_GetProgramFullPath():c_ptr(c_char);
extern proc  Py_GetPrefix():c_ptr(c_char);
extern proc  Py_GetExecPrefix():c_ptr(c_char);
extern proc  Py_GetPath():c_ptr(c_char);
extern proc  Py_GetVersion():c_string;
extern proc  Py_GetPlatform():c_string;
extern proc  Py_GetCopyright():c_string;
extern proc  Py_GetCompiler():c_string;
extern proc  Py_GetBuildInfo():c_string;
extern proc  _Py_svnversion():c_string;
extern proc  Py_SubversionRevision():c_string;
extern proc  Py_SubversionShortBranch():c_string;
extern proc  _Py_hgidentifier():c_string;
extern proc  _Py_hgversion():c_string;
extern proc  _PyBuiltin_Init(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  _PySys_Init(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  _PyImport_Init():c_void_ptr;
extern proc  _PyExc_Init():c_void_ptr;
extern proc  _PyImportHooks_Init():c_void_ptr;
extern proc  _PyFrame_Init():c_int;
extern proc  _PyInt_Init():c_int;
extern proc  _PyLong_Init():c_int;
extern proc  _PyFloat_Init():c_void_ptr;
extern proc  PyByteArray_Init():c_int;
extern proc  _PyRandom_Init():c_void_ptr;
extern proc  _PyExc_Fini():c_void_ptr;
extern proc  _PyImport_Fini():c_void_ptr;
extern proc  PyMethod_Fini():c_void_ptr;
extern proc  PyFrame_Fini():c_void_ptr;
extern proc  PyCFunction_Fini():c_void_ptr;
extern proc  PyDict_Fini():c_void_ptr;
extern proc  PyTuple_Fini():c_void_ptr;
extern proc  PyList_Fini():c_void_ptr;
extern proc  PySet_Fini():c_void_ptr;
extern proc  PyString_Fini():c_void_ptr;
extern proc  PyInt_Fini():c_void_ptr;
extern proc  PyFloat_Fini():c_void_ptr;
extern proc  PyOS_FiniInterrupts():c_void_ptr;
extern proc  PyByteArray_Fini():c_void_ptr;
extern proc  _PyRandom_Fini():c_void_ptr;
extern proc  PyOS_Readline(args1: c_ptr(FILE ), args2: c_ptr(FILE ), args3: c_ptr(c_char) ):c_ptr(c_char);
extern record PyOS_sighandler_t{
}

extern proc  PyOS_getsig(_PyOS_sighandler_t: PyOS_sighandler_t, args2: c_int ):PyOS_sighandler_t;
extern proc  PyOS_setsig(_PyOS_sighandler_t: PyOS_sighandler_t, args2: c_int, args3: PyOS_sighandler_t ):PyOS_sighandler_t;
extern proc  _PyOS_URandom(buffer: c_void_ptr, size: Py_ssize_t ):c_int;
extern proc  PyEval_CallObjectWithKeywords( args2: c_ptr(PyObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyEval_CallFunction( obj: c_ptr(PyObject ), format: c_string ):c_ptr(PyObject );
extern proc  PyEval_CallMethod( obj: c_ptr(PyObject ), methodname: c_string, format: c_string ):c_ptr(PyObject );
extern proc  PyEval_SetProfile(args1: Py_tracefunc, args2: c_ptr(PyObject ) ):c_void_ptr;
extern proc  PyEval_SetTrace(args1: Py_tracefunc, args2: c_ptr(PyObject ) ):c_void_ptr;

extern proc  PyEval_GetBuiltins(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyEval_GetGlobals(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyEval_GetLocals(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyEval_GetFrame(_struct_frame: _frame ):c_ptr(_frame );
extern proc  PyEval_GetRestricted():c_int;
extern proc  PyEval_MergeCompilerFlags(cf: c_ptr(PyCompilerFlags ) ):c_int;
extern proc  Py_FlushLine():c_int;
extern proc  Py_AddPendingCall(func: c_ptr(int ()(void )), arg: c_void_ptr ):c_int;
extern proc  Py_MakePendingCalls():c_int;
extern proc  Py_SetRecursionLimit(args1: c_int ):c_void_ptr;
extern proc  Py_GetRecursionLimit():c_int;
extern proc  _Py_CheckRecursiveCall(_where: c_string ):c_int;
extern proc  PyEval_GetFuncName(args1: c_ptr(PyObject ) ):c_string;
extern proc  PyEval_GetFuncDesc(args1: c_ptr(PyObject ) ):c_string;
extern proc  PyEval_GetCallStats( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyEval_EvalFrame( args2: c_ptr(_frame ) ):c_ptr(PyObject );
extern proc  PyEval_EvalFrameEx( f: c_ptr(_frame ), exc: c_int ):c_ptr(PyObject );
extern proc  PyEval_SaveThread(_PyThreadState: PyThreadState ):c_ptr(PyThreadState );
extern proc  PyEval_RestoreThread(args1: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyEval_ThreadsInitialized():c_int;
extern proc  PyEval_InitThreads():c_void_ptr;
extern proc  PyEval_AcquireLock():c_void_ptr;
extern proc  PyEval_ReleaseLock():c_void_ptr;
extern proc  PyEval_AcquireThread(tstate: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyEval_ReleaseThread(tstate: c_ptr(PyThreadState ) ):c_void_ptr;
extern proc  PyEval_ReInitThreads():c_void_ptr;
extern proc  _PyEval_SliceIndex(args1: c_ptr(PyObject ), args2: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PySys_GetObject( args2: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PySys_SetObject(args1: c_ptr(c_char), args2: c_ptr(PyObject ) ):c_int;
extern proc  PySys_GetFile(_FILE: FILE, args2: c_ptr(c_char), args3: c_ptr(FILE ) ):c_ptr(FILE );
extern proc  PySys_SetArgv(args1: c_int, args2: c_ptr(c_char ) ):c_void_ptr;
extern proc  PySys_SetArgvEx(args1: c_int, args2: c_ptr(c_char ), args3: c_int ):c_void_ptr;
extern proc  PySys_SetPath(args1: c_ptr(c_char) ):c_void_ptr;
extern proc  PySys_WriteStdout( format: c_string ):c_void_ptr;
extern proc  PySys_WriteStderr( format: c_string ):c_void_ptr;
extern proc  PySys_ResetWarnOptions():c_void_ptr;
extern proc  PySys_AddWarnOption(args1: c_ptr(c_char) ):c_void_ptr;
extern proc  PySys_HasWarnOptions():c_int;
extern proc  _PySys_GetSizeOf():c_int;
extern proc  PyOS_InterruptOccurred():c_int;
extern proc  PyOS_InitInterrupts():c_void_ptr;
extern proc  PyOS_AfterFork():c_void_ptr;
extern proc  PyImport_GetMagicNumber():c_long;
extern proc  PyImport_ExecCodeModule( name: c_ptr(c_char), co: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyImport_ExecCodeModuleEx( name: c_ptr(c_char), co: c_ptr(PyObject ), pathname: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PyImport_GetModuleDict(_PyObject: PyObject ):c_ptr(PyObject );
extern proc  PyImport_AddModule( name: c_string ):c_ptr(PyObject );
extern proc  PyImport_ImportModule( name: c_string ):c_ptr(PyObject );
extern proc  PyImport_ImportModuleNoBlock( args2: c_string ):c_ptr(PyObject );
extern proc  PyImport_ImportModuleLevel( name: c_ptr(c_char), globals: c_ptr(PyObject ), locals: c_ptr(PyObject ), fromlist: c_ptr(PyObject ), level: c_int ):c_ptr(PyObject );
extern proc  PyImport_GetImporter( path: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyImport_Import( name: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyImport_ReloadModule( m: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyImport_Cleanup():c_void_ptr;
extern proc  PyImport_ImportFrozenModule(args1: c_ptr(c_char) ):c_int;
extern proc  _PyImport_AcquireLock():c_void_ptr;
extern proc  _PyImport_ReleaseLock():c_int;
extern "struct filedescr" record filedescr{
}

extern proc  _PyImport_FindModule(_struct_filedescr: filedescr, args2: c_string, args3: c_ptr(PyObject ), args4: c_ptr(c_char), size_t: c_int, args6: c_ptr(FILE ), args7: c_ptr(PyObject ) ):c_ptr(filedescr );
extern proc  _PyImport_IsScript(args1: c_ptr(filedescr ) ):c_int;
extern proc  _PyImport_ReInitLock():c_void_ptr;
extern proc  _PyImport_FindExtension( args2: c_ptr(c_char), args3: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  _PyImport_FixupExtension( args2: c_ptr(c_char), args3: c_ptr(c_char) ):c_ptr(PyObject );
extern "struct _inittab" record _inittab{
	
}

extern proc  PyImport_AppendInittab(name: c_string, initfunc: c_ptr(void ()(void)) ):c_int;
extern proc  PyImport_ExtendInittab(newtab: c_ptr(_inittab ) ):c_int;
extern "struct _frozen" record _frozen{
	
}

extern proc  PyObject_Cmp(o1: c_ptr(PyObject ), o2: c_ptr(PyObject ), result: c_ptr(c_int) ):c_int;
extern proc  PyObject_Call( callable_object: c_ptr(PyObject ), args: c_ptr(PyObject ), kw: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_CallObject( callable_object: c_ptr(PyObject ), args: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_CallFunction( callable_object: c_ptr(PyObject ), format: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PyObject_CallMethod( o: c_ptr(PyObject ), m: c_ptr(c_char), format: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  _PyObject_CallFunction_SizeT( callable: c_ptr(PyObject ), format: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  _PyObject_CallMethod_SizeT( o: c_ptr(PyObject ), name: c_ptr(c_char), format: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PyObject_CallFunctionObjArgs( callable: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_CallMethodObjArgs( o: c_ptr(PyObject ), m: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_Type( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_Size(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyObject_Length(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  _PyObject_LengthHint(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ), args3: Py_ssize_t ):Py_ssize_t;
extern proc  PyObject_GetItem( o: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_SetItem(o: c_ptr(PyObject ), key: c_ptr(PyObject ), v: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_DelItemString(o: c_ptr(PyObject ), key: c_ptr(c_char) ):c_int;
extern proc  PyObject_DelItem(o: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_AsCharBuffer(obj: c_ptr(PyObject ), buffer: c_ptr(c_char ), buffer_len: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyObject_CheckReadBuffer(obj: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_AsReadBuffer(obj: c_ptr(PyObject ), buffer: c_ptr(c_char), buffer_len: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyObject_AsWriteBuffer(obj: c_ptr(PyObject ), buffer: c_ptr(void ), buffer_len: c_ptr(Py_ssize_t ) ):c_int;
extern proc  PyObject_GetBuffer(obj: c_ptr(PyObject ), view: c_ptr(Py_buffer ), flags: c_int ):c_int;
extern proc  PyBuffer_GetPointer(view: c_ptr(Py_buffer ), indices: c_ptr(Py_ssize_t ) ):c_void_ptr;
extern proc  PyBuffer_SizeFromFormat(args1: c_string ):c_int;
extern proc  PyBuffer_ToContiguous(buf: c_void_ptr, view: c_ptr(Py_buffer ), len: Py_ssize_t, fort: c_char ):c_int;
extern proc  PyBuffer_FromContiguous(view: c_ptr(Py_buffer ), buf: c_void_ptr, len: Py_ssize_t, fort: c_char ):c_int;
extern proc  PyObject_CopyData(dest: c_ptr(PyObject ), src: c_ptr(PyObject ) ):c_int;
extern proc  PyBuffer_IsContiguous(view: c_ptr(Py_buffer ), fort: c_char ):c_int;
extern proc  PyBuffer_FillContiguousStrides(ndims: c_int, shape: c_ptr(Py_ssize_t ), strides: c_ptr(Py_ssize_t ), itemsize: c_int, fort: c_char ):c_void_ptr;
extern proc  PyBuffer_FillInfo(view: c_ptr(Py_buffer ), o: c_ptr(PyObject ), buf: c_void_ptr, len: Py_ssize_t, readonly: c_int, flags: c_int ):c_int;
extern proc  PyBuffer_Release(view: c_ptr(Py_buffer ) ):c_void_ptr;
extern proc  PyObject_Format( obj: c_ptr(PyObject ), format_spec: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyObject_GetIter( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyIter_Next( args2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Check(o: c_ptr(PyObject ) ):c_int;
extern proc  PyNumber_Add( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Subtract( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Multiply( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Divide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_FloorDivide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_TrueDivide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Remainder( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Divmod( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Power( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ), o3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Negative( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Positive( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Absolute( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Invert( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Lshift( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Rshift( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_And( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Xor( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Or( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Index( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_AsSsize_t(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ), exc: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  _PyNumber_ConvertIntegralToInt( integral: c_ptr(PyObject ), error_format: c_string ):c_ptr(PyObject );
extern proc  PyNumber_Int( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Long( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_Float( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceAdd( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceSubtract( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceMultiply( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceDivide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceFloorDivide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceTrueDivide( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceRemainder( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlacePower( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ), o3: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceLshift( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceRshift( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceAnd( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceXor( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_InPlaceOr( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyNumber_ToBase( n: c_ptr(PyObject ), base: c_int ):c_ptr(PyObject );
extern proc  PySequence_Check(o: c_ptr(PyObject ) ):c_int;
extern proc  PySequence_Size(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PySequence_Length(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PySequence_Concat( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PySequence_Repeat( o: c_ptr(PyObject ), count: Py_ssize_t ):c_ptr(PyObject );
extern proc  PySequence_GetItem( o: c_ptr(PyObject ), i: Py_ssize_t ):c_ptr(PyObject );
extern proc  PySequence_GetSlice( o: c_ptr(PyObject ), i1: Py_ssize_t, i2: Py_ssize_t ):c_ptr(PyObject );
extern proc  PySequence_SetItem(o: c_ptr(PyObject ), i: Py_ssize_t, v: c_ptr(PyObject ) ):c_int;
extern proc  PySequence_DelItem(o: c_ptr(PyObject ), i: Py_ssize_t ):c_int;
extern proc  PySequence_SetSlice(o: c_ptr(PyObject ), i1: Py_ssize_t, i2: Py_ssize_t, v: c_ptr(PyObject ) ):c_int;
extern proc  PySequence_DelSlice(o: c_ptr(PyObject ), i1: Py_ssize_t, i2: Py_ssize_t ):c_int;
extern proc  PySequence_Tuple( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PySequence_List( o: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PySequence_Fast( o: c_ptr(PyObject ), m: c_string ):c_ptr(PyObject );
extern proc  PySequence_Count(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ), value: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PySequence_Contains(seq: c_ptr(PyObject ), ob: c_ptr(PyObject ) ):c_int;
extern proc  _PySequence_IterSearch(_Py_ssize_t: Py_ssize_t, seq: c_ptr(PyObject ), obj: c_ptr(PyObject ), operation: c_int ):Py_ssize_t;
extern proc  PySequence_In(o: c_ptr(PyObject ), value: c_ptr(PyObject ) ):c_int;
extern proc  PySequence_Index(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ), value: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PySequence_InPlaceConcat( o1: c_ptr(PyObject ), o2: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PySequence_InPlaceRepeat( o: c_ptr(PyObject ), count: Py_ssize_t ):c_ptr(PyObject );
extern proc  PyMapping_Check(o: c_ptr(PyObject ) ):c_int;
extern proc  PyMapping_Size(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyMapping_Length(_Py_ssize_t: Py_ssize_t, o: c_ptr(PyObject ) ):Py_ssize_t;
extern proc  PyMapping_HasKeyString(o: c_ptr(PyObject ), key: c_ptr(c_char) ):c_int;
extern proc  PyMapping_HasKey(o: c_ptr(PyObject ), key: c_ptr(PyObject ) ):c_int;
extern proc  PyMapping_GetItemString( o: c_ptr(PyObject ), key: c_ptr(c_char) ):c_ptr(PyObject );
extern proc  PyMapping_SetItemString(o: c_ptr(PyObject ), key: c_ptr(c_char), value: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_IsInstance(object: c_ptr(PyObject ), typeorclass: c_ptr(PyObject ) ):c_int;
extern proc  PyObject_IsSubclass(object: c_ptr(PyObject ), typeorclass: c_ptr(PyObject ) ):c_int;
extern proc  _PyObject_RealIsInstance(inst: c_ptr(PyObject ), cls: c_ptr(PyObject ) ):c_int;
extern proc  _PyObject_RealIsSubclass(derived: c_ptr(PyObject ), cls: c_ptr(PyObject ) ):c_int;
extern proc  _Py_add_one_to_index_F(nd: c_int, _index: c_ptr(Py_ssize_t ), shape: c_ptr(Py_ssize_t ) ):c_void_ptr;
extern proc  _Py_add_one_to_index_C(nd: c_int, _index: c_ptr(Py_ssize_t ), shape: c_ptr(Py_ssize_t ) ):c_void_ptr;
extern record PyCodeObject{
}

extern proc  PyCode_New(_PyCodeObject: PyCodeObject, args2: c_int, args3: c_int, args4: c_int, args5: c_int, args6: c_ptr(PyObject ), args7: c_ptr(PyObject ), args8: c_ptr(PyObject ), args9: c_ptr(PyObject ), args10: c_ptr(PyObject ), args11: c_ptr(PyObject ), args12: c_ptr(PyObject ), args13: c_ptr(PyObject ), args14: c_int, args15: c_ptr(PyObject ) ):c_ptr(PyCodeObject );
extern proc  PyCode_NewEmpty(_PyCodeObject: PyCodeObject, filename: c_string, funcname: c_string, firstlineno: c_int ):c_ptr(PyCodeObject );
extern proc  PyCode_Addr2Line(args1: c_ptr(PyCodeObject ), args2: c_int ):c_int;
extern "struct _addr_pair" record _addr_pair{
	
}

extern record PyAddrPair{
}

extern proc  _PyCode_CheckLineNumber(co: c_ptr(PyCodeObject ), lasti: c_int, bounds: c_ptr(PyAddrPair ) ):c_int;
extern proc  _PyCode_ConstantKey( obj: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyCode_Optimize( code: c_ptr(PyObject ), consts: c_ptr(PyObject ), names: c_ptr(PyObject ), lineno_obj: c_ptr(PyObject ) ):c_ptr(PyObject );


extern proc  PyNode_Compile(_PyCodeObject: PyCodeObject, args2: c_ptr(_node ), args3: c_string ):c_ptr(PyCodeObject );
extern record PyFutureFeatures{
}


extern proc  PyAST_Compile(_PyCodeObject: PyCodeObject, args2: c_ptr(_mod ), args3: c_string, args4: c_ptr(PyCompilerFlags ), args5: c_ptr(PyArena ) ):c_ptr(PyCodeObject );
extern proc  PyFuture_FromAST(_PyFutureFeatures: PyFutureFeatures, args2: c_ptr(_mod ), args3: c_string ):c_ptr(PyFutureFeatures );
extern proc  PyEval_EvalCode( args2: c_ptr(PyCodeObject ), args3: c_ptr(PyObject ), args4: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyEval_EvalCodeEx( co: c_ptr(PyCodeObject ), globals: c_ptr(PyObject ), locals: c_ptr(PyObject ), args: c_ptr(PyObject ), argc: c_int, kwds: c_ptr(PyObject ), kwdc: c_int, defs: c_ptr(PyObject ), defc: c_int, closure: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  _PyEval_CallTracing( func: c_ptr(PyObject ), args: c_ptr(PyObject ) ):c_ptr(PyObject );
extern proc  PyOS_ascii_strtod(str: c_string, ptr: c_ptr(c_char ) ): c_double;
extern proc  PyOS_ascii_atof(str: c_string ): c_double;
extern proc  PyOS_ascii_formatd(buffer: c_ptr(c_char), buf_len: c_int, format: c_string, d: c_double ):c_ptr(c_char);
extern proc  PyOS_string_to_double(str: c_string, endptr: c_ptr(c_char ), overflow_exception: c_ptr(PyObject ) ): c_double;
extern proc  PyOS_double_to_string(val: c_double, format_code: c_char, precision: c_int, flags: c_int,_type: c_ptr(c_int) ):c_ptr(c_char);
extern proc  _Py_parse_inf_or_nan(p: c_string, endptr: c_ptr(c_char ) ): c_double;
extern proc  PyOS_mystrnicmp(args1: c_string, args2: c_string, args3: Py_ssize_t ):c_int;
extern proc  PyOS_mystricmp(args1: c_string, args2: c_string ):c_int;
extern proc  _Py_dg_strtod(str: c_string, ptr: c_ptr(c_char ) ): c_double;
extern proc  _Py_dg_dtoa(d: c_double, mode: c_int, ndigits: c_int, decpt: c_ptr(c_int), sign: c_ptr(c_int), rve: c_ptr(c_char ) ):c_ptr(c_char);
extern proc  _Py_dg_freedtoa(s: c_ptr(c_char) ):c_void_ptr;
extern proc  _Py_Mangle( p: c_ptr(PyObject ), name: c_ptr(PyObject ) ):c_ptr(PyObject );


extern proc  PyFPE_dummy(args1: c_void_ptr ): c_double;


// Todo High Level Chapel.

class PythonInterpreter{
   proc PythonInterpreter(){
       Py_Initialize();
   }

   proc Eval(code:string){
       PyRun_SimpleStringFlags(code.localize().c_str(),nil);
   }

   proc ~PythonInterpreter(){
        Py_Finalize();
   }
}










}