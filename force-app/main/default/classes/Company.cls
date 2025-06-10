public class Company {
	public String companyName;
    public String ceo;
    public Integer employeeCount;
    public Long revenue;
    
    //list all customers
    private List<Client> customers = new List<Client>();
    
    
    public void addNewCustomer(String clientName, String website, String email, Long phone) {
        Client customer = new Client(clientName, website, email, phone);
        customers.add(customer);
    }
    
    public void getAllCustomer(){ 
        for(Client customer : customers){ //fazendo um loop para adicionar todos os itens da lista nessa variavel
            System.debug('Customer name: ' +customer.clientName);
            System.debug('Website: ' +customer.website);
            System.debug('Email: ' +customer.email);
            System.debug('Phone: ' +customer.phone);
        }
    }
    
    //inner class
    private class Client {
        public String clientName;
        public String website;
        public String email;
        public Long phone;
    
        Client(String clientName, String website, String email, Long phone){
            this.clientName = clientName;
            this.website = website;
            this.email = email;
            this.phone = phone;
        }
    }
}