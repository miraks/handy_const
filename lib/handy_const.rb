require 'handy_const/version'

module HandyConst
  def self.extend_module!
    Module.send :include, self
  end

  def const name, value
    const_name = name.to_s.upcase
    const_set const_name, value.freeze
    class_eval <<-CODE, __FILE__, __LINE__ + 1
      def self.#{name}
        #{const_name}
      end

      def #{name}
        #{const_name}
      end
    CODE
  end
end
