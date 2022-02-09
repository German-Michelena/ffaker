# frozen_string_literal: true

module FFaker
  module IdentificationES
    extend ModuleUtils
    extend self

    GENDERS = %w[Hombre Mujer].freeze

    def gender
      fetch_sample(GENDERS)
    end

    # NIF is the Spanish ID, followed by format:  XX.XXX.XXX - Y
    # https://es.wikipedia.org/wiki/N%C3%BAmero_de_identificaci%C3%B3n_fiscal
    #
    def nif
      numero = rand(10_000_000...99_999_999)
      letra = "TRWAGMYFPDXBNJZSQVHLCKE"[numero % 23].chr
      numero + letra
    end
  end
end
