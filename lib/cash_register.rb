require 'pry'

class CashRegister


attr_accessor :total, :discount, :quantity, :price, :item
@@items = []
      def initialize(discount = "0")

        @total = 0
        @discount = discount
      end

      def add_item(title, price, quantity = 1)

        @quantity = quantity
        @total += price * quantity.to_i
        #binding.pry

        def apply_discount
          #applies the discount to the total price
          #returns success message with updated total
          #reduces the total
          #returns a string error message that there is no discount to apply
        if @discount != 0
          self.total = (@total * ((100 - @discount)/100)).to_i
                return "After the discount, the total comes to $#{@total}."
          else
               return "There is no discount to apply."
          end
       end

        def items
          #returns an array containing all items that have been added
          @@items << items


        end

        def void_last_transaction
          #subtracts the last transaction from the total
          @total = @total - @total
        end

      end

    end
