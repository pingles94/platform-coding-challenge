package StepDefinition;     
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import utils.DriverFactory;

@Given("^the user is connected to the service$")
    public void startService(){
        docker run -d -p 8080:8080 --name pltsci-sdet-assignment pltsci-sdet-assignment
    }

@When ("^the user sends an \"(.*)\"$")
    public void sendRequest(JSONObject inputfile){
        curl -H 'Content-Type: application/json' -X POST -d 'inputfile' http://localhost:8080/v1/cleaning-sessions;
    }

@Then ("^the user should receive back a response status$")
    public void getResponse(JSONObject inputfile){
        response = curl -H 'Content-Type: application/json' -X POST -d 'inputfile' http://localhost:8080/v1/cleaning-sessions;
    }

@And ("^the output should match the \"(.*)\"$")
    public void verifyResponse(JSONObject outputfile){
        assertEquals(this.response, outputfile);
    }