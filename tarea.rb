class Padre
  attr_accessor :nombre, :profesion, :hijos
  def listar_hijos
    if hijos.nil?
      puts "No hay hijos"
    else
      hijos.each do |hijo|
        puts "Nombre del hijo(a) #{hijo.nombre}, edad #{hijo.edad}"
      end
    end
  end
end

class Hijo
  attr_accessor :nombre, :edad
  def initialize(nombre="", edad=0)
    @nombre = nombre
    @edad = edad
  end   
end

if __FILE__ == $0
  hijo1 = Hijo.new("Pedro", 34)
  hijo2 = Hijo.new("Marina", 24)
  obj_padre = Padre.new
  obj_padre.nombre = "Andres"
  obj_padre.hijos = [hijo1, hijo2]
  obj_padre.listar_hijos
end