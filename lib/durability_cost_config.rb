
class DurabilityCostConfig
    def initialize(config = { })
        @config = config
    end

    def durability_cost_of(char)
        @config[get_config_type(char)]
    end

    def get_config_type(char)
        case char
        when /[a-z]/
            return :default
        when /[A-Z]/
            return :upcase
        when /\s/
            return :whitespace
        end
    end
end
