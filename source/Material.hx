@:structAccess
@:unreflective
@:include("raylib.h")
extern class Material {
    public var shader: Shader;
    public var maps: cpp.Pointer<MaterialMap>;
    public var params: cpp.Pointer<Float>;
    /**
     * Material, includes shader and maps
     * @return cpp: Material
     */
    static inline function create(shader: Shader, maps: cpp.Pointer<MaterialMap>, params: cpp.Pointer<Float>): Material {
        return untyped __cpp__("{ (Shader){0}, (MaterialMap *){1}, (float[4]){2} }", shader, maps, params);
    }
    
}