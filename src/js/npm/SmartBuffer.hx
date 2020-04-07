package js.npm;

@:jsRequire("smart-buffer", "SmartBuffer")
extern class SmartBuffer {
  /**
  * Creates a new SmartBuffer instance with the provided SmartBufferOptions options.
  *
  * @param options { SmartBufferOptions } The options to use when creating the SmartBuffer instance.
  */
  static function fromOptions(options:{?encoding:String, ?size:Int, ?buff:js.node.Buffer}):SmartBuffer;

  /**
  * Gets the value of the internal managed Buffer (Includes managed data only)
  *
  * @param { Buffer }
  */
  function toBuffer():js.node.Buffer;

  /**
  * Writes an Int32BE value to the current write position (or at optional offset).
  *
  * @param value { Number } The value to write.
  * @param offset { Number } The offset to write the value at.
  *
  * @return this
  */
  function writeInt32BE(value: Int, ?offset: Int): SmartBuffer;

  /**
  * Writes an Int8 value to the current write position (or at optional offset).
  *
  * @param value { Number } The value to write.
  * @param offset { Number } The offset to write the value at.
  *
  * @return this
  */
  function writeInt8(value: Int, ?offset: Int): SmartBuffer;

  /**
  * Writes a String
  *
  * @param value { String } The String value to write.
  * @param arg2 { Number | String } The offset to write the string at, or the BufferEncoding to use.
  * @param encoding { String } The BufferEncoding to use for writing strings (defaults to instance encoding).
  *
  * @return this
  */
  function writeString(value: String, ?arg2: Int, ?encoding: String): SmartBuffer;

  /**
  * Writes a Buffer to the current write position.
  *
  * @param value { Buffer } The Buffer to write.
  * @param offset { Number } The offset to write the Buffer to.
  *
  * @return this
  */
  function writeBuffer(value: js.node.Buffer, ?offset: Int): SmartBuffer;

  /**
  * Gets the String value of the internal managed Buffer
  *
  * @param encoding { String } The BufferEncoding to display the Buffer as (defaults to instance level encoding).
  */
  function toString(?encoding: String): String;
}