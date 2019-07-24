require 'pry'

class CashRegister


attr_accessor :total, :discount, :quantity, :price


      def initialize(discount = 0)
        @items = []

        @total = 0
        @discount = discount
      end

      def add_item(title, price, quantity = 1)

        @quantity = quantity
        @total += price * quantity.to_i
        #binding.pry

        def apply_discount

            if discount != 0
                self.total = (total * ((100.0 - discount.to_f)/100)).to_i
                    return "After the discount, the total comes to $#{@total}."
              else
                   return "There is no discount to apply."
              end
           end

      def add_item(title, amount, quantity = 1)
        quantity.times { @items << title }

      end

      def items
        @items
      end

        def void_last_transaction
          #subtracts the last transaction from the total
          @total = @total - @total
        end

      end

    end
