<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>

<title>Registration</title>
</head>


<style>



body {
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
           /* background-image: url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAW8AAACJCAMAAADUiEkNAAAAzFBMVEX///8jHyAxPJcAAAAgHB0rKCn19PUdGRq7urrFxMQXERMbFhccFxgYExR1c3MRCgx6eHlHREUJAADs6+vx8fErN5UOBQhCP0A4NTVlY2S0s7NTUVHo6OgwLC2Qj4+EgoOamZnX19dta2yioaHPzs+rqqpbWVokMZPU1NSMioscK5EfLZJWVFU8OTppZ2js7fUUJY++wNvP0eWCh7tOV6RZYajJy+GprdCbn8g+SJ3b3expcLBKUqG3utgNIY5haKwAEouHjL5udbKSl8OePwPJAAAQSElEQVR4nO1da4OaOBeWJoJyMYIWbygq6oxTnXZmt93dbnf7tvv//9MrXnKBJASF0enwfGpnBg55CCfnlpNa7WwEzWEUDlYjt+eONqv2dNlYBOffrYIY3cV0MAYAeL5pGwaE0DAMB/ne7kfb+XTRvfbz/VIIooEGfAtqXBimD+zB9L7ivAjozdD1fEfA9QnQQqD+2KgovxD3Lc1DhpxrzLkDtNbi2k/8iqEv+8DMmNgJyk2gRfq1n/t1orMGnuLMZij3vHVls+RGsEYo19SmGEd+u2I8F7qhcy7bB8a9daVV1LHU/AvY3jPu14fXHsVrwcwFF7K9Zxy4s2uP5FVgDezL2Y5hg/W1x3L7mLleMWzH8KopnoGlbxVHt6ZZ5vLaI7ppzIvQ3DQgaF97TLeLrouKZTuG71aWIR8zzSmebk1z6pXzw0MTnOG9q8A27q89thtEo2jVTWA4zWuP7ubQ8EqjO45hNa49vhtDqXTHZkpFOI1mecrkCFCpFILZpeGpbMCKcIyOVpJlwhBuVVbKEb1S7O4kjHHn2gO9DQxK8Cp5MDfXHulNYAJehu7dmhlee6w3gOaL0V0ZKTt06ufk4KEBz7FoIHrzoZSBmY8yCwFgauPt2I6LCVHOVJAzuvZ4r4wojzaBPgCraSPQ9+h2ZsP1CAA/zwfiTa894quio043RGA85ZjQs6iXoy4Imm9aoyhrE9vT1sJcZGfZA6omvDl4yfHdGIaK09sG7lKepWkOVBOfbzhy1R0r6QEIXAWOFiO1mBesv9n82kSp9MHxI7XbNTQl7eS9Va+nayhMSAhWymEPfZA9xXfL7rzMQd0w1n423Yafq4CkYcm1uLFbdt9q1KqjEPQ2xznNt6AnCX7ZYPuGi/HD7LCgv8q9IUcfiL4aB4yuUDLb7ZxwZcF6ti3oD86ZjXPuKmyBwVWCVW1YP6D/wl8WFlw//H+ZaZyg1XmSBqk7QxNsrlS52UJwD+OlzdD2UTCEh//Xs7S3eXZsKZHAgMhvXa1OtnW0UV/c7G9j43j/38ywt3X+B6i7lHcfmyRXjJkUxfdigAB6zLHbMcH3Y0bAA1oXLDAzHB23QT+66ibYgviexBsjd2pxonwFy3dXy1Anl6ViGoevxwLu8MoGYDF8L0/aACibWCzfjQx1cqnT3UZ7A/D6+bNi+MbVZ9BTvYTlO0Od2NtLpyX0weMtbCYphG9qsVP+7hm+OxnqxLt4Yi5at5FYKITviPhwnqpCYfjOsE7Mx/OfTRH6P7+VLiNGIXxTvopy+J7hey335UHZc/Pjn399ev+xZCF7FML3gtInqlV5DN8jaV7dLHmP09ff3t29f/fwpVwpBxSzXton9Wv0VS+h+e7KI7HlTu/nvx/u3u1w9yIKpRi+T/XaECjbADTfcvXtlKm9n7//+/7dHu+/vYRpXpC/MzR927D8HBtjaL4nUvVdYtXZ0++fjmzv8PC1NDkERfnzwWTkbiY5fG6a77nM+objix5Mgn8+U2zvFMqfZQmicBPxqr7M+kYldRl4+vyBZnunUL6XI4jBTfAtVd+glJZfT98eWLZ3+PACFuEt8D2T8Q3rJcTznt59SrG94/uf4iUlcQt8N2SpnRKsE2aVpBXKC1iEt8D3UmZ+I/UQrxqevvHZjqFyvd4J8iV7GWLV+N7LuPiFMDeg+J7KzMGCrcGnz2m9jfHpWX5xd7HejHpjWK/3VmEj2wvrNsL5yu25m1Z08ksy+e4uJqs8MmSCR6v58iSY4pv8kze/i4yiPn37IGY7yyJsbDSArH1zYGhYCFgbeWyusYIAOZZt2Lbj+8dSlwy+mxvNIzJMYLrc+qZGvX+AxpuNjZV2FGyZnjme7iVRfA8kZZqwXlyhxjPHJmEV+F/ii5tbkGgQDC1giksZZy7794aH4tcj5Zsjw/Z4WwIawDiA8/UnBUMPxn9E8e1KzG+jV9S68uWzWG+f8K/IIgxcbncQCPqCzy9MdzmDcaWihO9gJJKRigHidFiab67glk7zLXN37IJ22Dx/z2ZbbBE2hK1vDH4GccU1cf0RHnaa76ZQhg2SSkXItz7gC+7RfNfFdGt2IZtSv/6doUlOCoXvYq4ldbYQTFN/r48EFgB6fLQEfE8k7XVSMkR8d0cCUw8NWrhytSahW7POLKqi8fG3OyW2Y8J52iuU+r8wPcNXQoMLB66TfK/lGS7ALhQivhUEl8/3H/+7U2R7p1A4SQdmzxy0TD8+w4Ca8DCZY0nskObuDk3wzcqwOTKYqIaA73VKMK+kvvT5/ec7ZcI5SQe6Fwv0tVUYDaetkUE1xDE05gKmtsPw/Xq/19c8n13GWL4X1N129sQmjJbT1gbSP7V1ngiG74RgtBO8HScFZ62XRejvjz/eKzL+/lvyWr1HnheNo5N1GizrxGvw6eoYnao1gKA3nXVif/F+ylo4LN8u2RaANErGmOgHRCcV+XzTrwe4USy4picFZ9iDtlsA3zvGf/6rpsLvkkkH6ksHLTp01n2ksuQB9wKDsc8bfcoAYfimZTzS/obeBlwZXL4j8jzsNpDGmHEoayuZv9MvKDz49aeKQZhyManZ6iUD8XNsDJgt8lNy4gE0WcXeoRq7MHz3MQGpOrLQ48ng8a2TCmPDZL2CjksTXptLNtlArbBk8bMgLMgqlL/Zi4hOROl9VVgNQIhnxZI/I4+UYN1E801kmOnVaoRlOEH6CopvUpQCOYKpKV0LZek0r8D4yXMypcMjnHUxV3i49fT9Zli9EpsQX8ArxQlMnj2Ii/mglZYR4Mb+VCkVj29KcNrJD6ilVJ4uLnb/7xdZeHCPhyfmAvycXD9yfvpOHbwtHFtxDm+nONaxNN9EBi841U7L4PHdxVaHydvgOCWOUEb8u+D05VOGY89ahLiSiTe9Yzvu+GvjVFB6j79qbuVT96RkKb7vsQzIk4HvSC1lHL7vieLjCdbJCVHy8pMiDHAWGYErJkY4PA3W5BZE62RSHVUmbgEgCPzM0/ETTB6/jkzfnnQv6Y7D4Rurb4EF3SLxk0DGNzSKz19+ka2cTNIBqzpBHergpDRPhU74u0X8ivXTt0zxjdMtHn8vL1bvpJiKwze+i0AhkJranaEu4buc/PwXcSicsQhTfCaA38dpmQmTP0jgpKAovvHME9ReYqbILTl8E8H8hBhRIju7SlauKZgol+LpdwHjjItJ+OZ/ZSkucOmSYJrM0nwP8CX81ArWFKRRA4dv/NY8ueCYb2lCjb9SFQBRKpNOOmC+PT7feOAnLlYZH8TMk/DNl4Fnpj9NiSV84xctSEAGFN+RtD62vPpBfmEEnXTImt+puZc1v+/zz2+8Zkv5JvObr5UWFN8Z9bEltjzirZy0i4kNbMF0XefV340032GG/iZrxDB5F67+5r/oBsV3V37KYqn1389prfKB/HaaQd88aTsQ+4RfN3OiheIbf90CG6iVfucy+4R8BQzIFpIa9dlyUcyK2RAl+p+/J7x8aqcD/pb5z4Dtb2gFiQsEZvBpJwfX/uaPs4ftbxnfWLNZfMEujqDUavKKn2ImeCA5efT55x0dH7/7gX+DV3X+xg2sCI1T2Jj4lx7voWccfx7LgBrnCqJ4qVIFmX8Jba5gorLpP+aDDkWei5YJwVYYi/n64wNhnLYISWyDdy1WJyRmgVNn3IfGuoGOn+A8AVcGiZ+QuAiHb+Lqcj/FAYkJ1uhgCx/+xT7P/v0aYCS80cf/HjDjVNIBL5i8CU6mCVnKyMA4dhUxEmi+8UswOFsLZn5aBjc+SARz2KJ2tO0/IqkFXkSW5xgAtsBAqJs+/nd3VOQf/kiPTPNT0Q0d5wkgxIsD6aEIU/Zdl7SMovkm5hlKR1BwOg8vETU+35TgVNPQDm2QsCL54BR55EKIZ4kD2sIKOf2Pv/aM02UoYyh6Bp2ka2jdQdLqhsEakQF1ToIgv5MaJ6lkoc1ibj6N5HdsLSGYaTq9f/axXKFc6PQwrxOZU3EIbOd0xmqFuJh0viZkcupUVlCcv6SuGNpU2ILhWyhjtiWGBO0BZOYvmdDX0GASlvufZSiU3cy4oG4zYLfnQ28s6ar3/PPhjk46UPl5f4uNysWcagrMqAEdsvn5/avQZxHb71OYn/f7w9NsuG9TtQxMOo+fnweM4OgwB7qNTaI67PD8mf19tnkYZjFKJuwMsJWswB//+0AlHegnM7z6IIyiyXzr0S2DIGNoMl1wDd/sjQajPlKuPzFA/XEdRdN5z6fmIGRk8PlOCHZ2glejMUj6Noc/3mb1jkVnu/W8AzhssJIlRukyK6ZcCjrI95HDlJIk/fCQjS8btmVTqpXHd22akuGbrAyV+qq0YAsXWJG7Hf42uzeyd2bj0XR/tj0c0FJUUW3po8F0sxBRuWbc/jrtXx6oyqhRZC1zUf2gWDBa0f5ljOwT07yz3B5+/8H94MFUrbi8JSHDRmknRd8IZIIJJ99wgIzwVBdXYX3sRhBpBVM6PriHQvtY74z+mivJbeULJwVxsTCqcxeCNq+CGYI1tpTS9d9T4TnkaRnienuB4AmT39mjgzInuIb6efvHZhzJu1vHleotmmPu52fFOwe4iLyUYCdWCmK+a4s+t8zcAvPULJPsb4hASrAJG7U030r9kW2Uq+dr08nscm8DpUPS9amX2luDwEZs5XRCgKhqYOiAUTxXmsedN5bGeVERTwYvBCHbv5MUbIFNhxJsGPgPrewJHm+CUdcpoVKLe9UeIsON6fmmFT+ybSKA6uITJA7jmfQc4PnINJEH7MGBtkXfPWDE/TCGGwfLcJCH6iFXRnN7vEuf98KDo2C0k4vqq8MraZ4Ek9CIygTf6RRbsQV4o650P189ut5ZTFubUYz5pKHyloLmMJqEYbhsKu/66i6i9uooY3h2Ld9B8HTZlN2hm9lDdg8IXAXnvrlSPL+B92G/EWT3SD7AAJuMVa65SblVAqh3qPwFIS1EoWF546nwUwmmfVW2NafwcrnXBGlnDhbQB+MJRy3OIjfHkV6w0O3irw+5Dr/cGUugFy4XneMBakEzCusgtT9IBk/xbJlfFq6qIjjC2Nk8wKz3t3UTAODLCytScN78Ea8zBS8zhUOf/DOu82+jqew1scyjUS5Edb7rDm1Fo7AAukvq/PbKMMp5xOu5OD+B8WuhW895Ku55cArrrPLacdaamRcGfNuWN42FWujjEsBy2ki+UjRLJ/wNH+vKQ1PhsMALkMy/VmiWqcOh8ikTbwcLlOcc+Yrui3Fv5wylqMLwK2XCQ7CV59bPhGNWhqAAgsqoi+C7lZsjxKRouxCCks+WeeUYOhnnNOaDA6uVUo5gVGB89lByU0GKibCuLiesSzelvBHc94rQ4gbYVJNbEUvtUvce+uNKc6uju7Yu8u+RpVjpXeGIIETnej/Q99qVKsmNTgjO0SrQQ5OK7bOgR1qyPjqLbCTpUlAhG82N46lSbphgvFY9/rSCAMFyoAEz0yS3Edi2q5RZIeg0wpEPkCkIkEMHAc9d31d6pEB0mtP5FoB424SzPx0I7ndg+B4A48dJs4Qz7irst00sJ63VqNfruaPVoD1ZDhfVtM7A/wH79CcD5kcSMQAAAABJRU5ErkJggg==");
           */
           background-image: url("https://media-exp1.licdn.com/dms/image/C4E22AQF0-tsBl1LibA/feedshare-shrink_800/0/1637211610792?e=2147483647&v=beta&t=FEnohNS4_Iu_9uutpSEjZTXsfPdnRaXweSJR3iFDxaI");
           background-size: cover;
            height: 500px;
            background-size: cover;



        }




</style>



<body>
	<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">

		<table align="center">
			<tr>
				<td><form:label path="username">Username</form:label></td>
				<td><form:input path="username" name="username" id="username" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td><form:label path="firstname">FirstName</form:label></td>
				<td><form:input path="firstname" name="firstname"
						id="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">LastName</form:label></td>
				<td><form:input path="lastname" name="lastname" id="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="address">Address</form:label></td>
				<td><form:input path="address" name="address" id="address" /></td>
			</tr>
			<tr>
				<td><form:label path="Phonenumber">Phone</form:label></td>
				<td><form:input path="Phonenumber" name="phonenumber" id="Phonenumber" /></td>
			</tr>

			<tr>
				<td></td>
				<td><form:button id="register" name="register">Register</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td><a href="home.jsp">Home</a></td>
			</tr>
		</table>
	</form:form>

</body>
</html>