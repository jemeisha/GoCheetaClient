import com.jemeisha.proxy.Customer;
import com.jemeisha.proxy.Logic;
import com.jemeisha.proxy.LogicService;
import com.jemeisha.proxy.NoSuchAlgorithmException_Exception;

public class test {
    public static void main(String[] args) {
        LogicService logicService= new LogicService();
        Logic logic= logicService.getLogicPort();
        try {
            Customer customer= logic.register("kithu2","1111","Kithumini","Almeida","0765612345");
            System.out.println("First name"+customer.getCusFistName());
        } catch (NoSuchAlgorithmException_Exception e) {
            throw new RuntimeException(e);

        }

//        String msg=logic.sayHello();
//        System.out.println(msg);
    }
}
