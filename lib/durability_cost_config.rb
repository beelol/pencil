
class DurabilityCostConfig
    def initialize(config = { })
        @config = config
    end

    def durability_cost_of_string(str)
        accum = 0

        (str.length-1).times {|index| accum += durability_cost_of(str[index])}

        accum
    end

    def durability_cost_of(char)
        @config[get_config_type(char)]
    end

    def get_config_type(char)
        case char
        when /[A-Z]/
            return :upcase
        when /\s/
            return :whitespace
        end

        return :default
    end
end
