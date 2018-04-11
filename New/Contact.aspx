<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="New.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrap">
        <div>
            
			<div class="content">
				<section id="left-content">
					<h1>Contact Us</h1>

                        <p>
                            <span id="ContentPlaceHolder1_lblName">*Name</span> 
                            <span data-val-controltovalidate="ContentPlaceHolder1_txtName" data-val-errormessage="Please enter your name." data-val-display="Dynamic" id="ContentPlaceHolder1_reqName" class="validation" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">Please enter your name.</span>    
                            <input name="ctl00$ContentPlaceHolder1$txtName" type="text" id="ContentPlaceHolder1_txtName" placeholder="Your Name..." />                      
                        </p>
                        
                        <p>
                            <span id="ContentPlaceHolder1_lblEmail">*Email</span>
                            <span data-val-controltovalidate="ContentPlaceHolder1_txtEmail" data-val-errormessage="This field is required" data-val-display="Dynamic" id="ContentPlaceHolder1_reqEmail" class="validation" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">This field is required</span>
                            <span data-val-controltovalidate="ContentPlaceHolder1_txtEmail" data-val-errormessage="Please use a valid email address" data-val-display="Dynamic" id="ContentPlaceHolder1_RegExpEmailCheck" class="validation" data-val="true" data-val-evaluationfunction="RegularExpressionValidatorEvaluateIsValid" data-val-validationexpression="\w+([-+.&#39;]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" style="display:none;">Please use a valid email address</span>
                            <input name="ctl00$ContentPlaceHolder1$txtEmail" type="text" id="ContentPlaceHolder1_txtEmail" placeholder="Your Email..." />
                        </p>
                        
                        <p>
                            <span id="ContentPlaceHolder1_lblSubject">*Subject</span>
                            <span data-val-controltovalidate="ContentPlaceHolder1_txtSubject" data-val-errormessage="Please enter your subject" data-val-display="Dynamic" id="ContentPlaceHolder1_reqSubject" class="validation" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">Please enter your subject</span>
                            <input name="ctl00$ContentPlaceHolder1$txtSubject" type="text" id="ContentPlaceHolder1_txtSubject" placeholder="Your Subject..." />

                        </p>

                        <p>
                            <span id="ContentPlaceHolder1_lblMsg">*Message</span>
                            <span data-val-controltovalidate="ContentPlaceHolder1_txtMsg" data-val-errormessage="Please enter your message." data-val-display="Dynamic" id="ContentPlaceHolder1_reqMessage" class="validation" data-val="true" data-val-evaluationfunction="RequiredFieldValidatorEvaluateIsValid" data-val-initialvalue="" style="display:none;">Please enter your message.</span>
                            <textarea name="ctl00$ContentPlaceHolder1$txtMsg" rows="2" cols="20" id="ContentPlaceHolder1_txtMsg" placeholder="Write Something..." style="width:100%;">
</textarea>
                        </p>

                        <p>
                            <input type="submit" name="ctl00$ContentPlaceHolder1$btnSubmit" value="Submit" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSubmit&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="ContentPlaceHolder1_btnSubmit" />
                            
                        </p>

				</section>
				
				<section id="right-content">

					<h1>Visit Our Store</h1>
                    <p><strong>Address: </strong>
                        <span>First Floor, Times Square Kg Jaya Setia, Berakas, Bandar Seri Begawan BE 2713
                        Negara Brunei Darussalam</span></p>
                       
                    <p><strong>Telephone: </strong><span>888 1212</span></p>

                    <!-- REF: Getting Started  |  Google Maps JavaScript API  |  Google Developers. (2017). Google Developers. 
                         From https://developers.google.com/maps/documentation/javascript/tutorial -->
                    <h1>Map Location</h1>
                    <div id="map">
                        <script>
                          function initMap() {
                            var uluru = { lat: 4.939561, lng: 114.940122 };
                            var map = new google.maps.Map(document.getElementById('map'), {
                              zoom: 16,
                              center: uluru
                            });
                            var marker = new google.maps.Marker({
                              position: uluru,
                              map: map
                            });
                          }
                        </script>
                        <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgYp_-BQ9hKz7fWCF1gPktEn5ThSlvZrg&callback=initMap"></script>
                     </div>
				</section>
			</div>

        </div>
    </div>


</asp:Content>
