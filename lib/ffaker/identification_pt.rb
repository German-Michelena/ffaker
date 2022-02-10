# frozen_string_literal: true

module FFaker
  module IdentificationPT
    extend ModuleUtils
    extend self


    def nif

      generated_nif = (1 + rand(9)).to_s

      (1..7).to_a.each { generated_nif += (rand(10)).to_s }

      control_sum  = 9*generated_nif[0,1].to_i + 8*generated_nif[1,1].to_i + 7*generated_nif[2,1].to_i + 6*generated_nif[3,1].to_i + 5*generated_nif[4,1].to_i + 4*generated_nif[5,1].to_i + 3*generated_nif[6,1].to_i + 2*generated_nif[7,1].to_i
      control_mod  = control_sum % 11
      check_number = 11 - control_mod
      check_number =  check_number > 9 ? 0 : check_number


      generated_nif += check_number.to_s
    end
  end
end