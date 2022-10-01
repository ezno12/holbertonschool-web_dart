void outer(String name, String id){
    String inner(){
        List splitedName = name.split(" ");
        String firstName = splitedName[0];
        String lastName = splitedName[1][0];
        return 'Hello Agent $lastName.$firstName your id is $id';
    }
    print(inner());
}