package consoleBot;

import java.util.Scanner;

public class TestBot {

    public static void main(String[] args) throws Exception {
        new ConnectDB();
        ConnectDB.conn();
        Scanner sc = new Scanner(System.in);
        String userInput = "";
        MyBot chatbot = new MyBot();
        while(!userInput.equalsIgnoreCase("Stop it")) {
            System.out.print("User: ");
            userInput = sc.nextLine();
            chatbot.answer(userInput);
        }
        sc.close();
    }
}