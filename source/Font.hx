@:structAccess
@:unreflective
@:include("raylib.h")
extern class Font {
    public var baseSize: Int;
    public var glyphCount: Int;
    public var glyphPadding: Int;
    public var texture: Texture;
    public var recs: cpp.RawPointer<Rectangle>;
    public var glyphs: cpp.RawPointer<GlyphInfo>;
    /**
     * Font, font texture and GlyphInfo array data
     * @return cpp: Font
     */
    static inline function create(baseSize: Int, glyphCount: Int, glyphPadding: Int, texture: Texture, recs: cpp.RawPointer<Rectangle>, glyphs: cpp.RawPointer<GlyphInfo>): Font {
        return untyped __cpp__("{ (int){0}, (int){1}, (int){2}, (Texture2D){3}, (Rectangle *){4}, (GlyphInfo *){5} }", baseSize, glyphCount, glyphPadding, texture, recs, glyphs);
    }
    
}
