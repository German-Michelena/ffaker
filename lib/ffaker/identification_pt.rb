# frozen_string_literal: true

module FFaker
  module IdentificationPT
    extend ModuleUtils
    extend self


    def nif
      numero = rand(10_000_000...99_999_999)
      letra = "TRWAGMYFPDXBNJZSQVHLCKE"[numero % 23].chr
      numero + letra

      generated_nif = (1 + rand(9)).to_s

      (1..7).to_a.each { generated_nif += (rand(10)).to_s }

      control_sum  = 9*value[0,1].to_i + 8*value[1,1].to_i + 7*value[2,1].to_i + 6*value[3,1].to_i + 5*value[4,1].to_i + 4*value[5,1].to_i + 3*value[6,1].to_i + 2*value[7,1].to_i
      control_mod  = control_sum % 11
      check_number = 11 - control_mod
      check_number > 9 ? 0 : check_number


      generated_nif += check_number
    end
  end
end