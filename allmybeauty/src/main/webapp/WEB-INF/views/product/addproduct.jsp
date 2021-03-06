<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ include file="../include/myheader.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    
    input:invalid {
	  border: 1px solid skyblue;
	}
     
    .col-sm-offset-2 {
     	margin-left:80px;
     }
     
     li {
     	list-style: none;
     }
      #aside{
        margin:20px;
     	float: left;
     	width: 10%;
     	min-height: 20px;
     }
     #article{	
        float: right;	
        width: 100%;	
        margin-left: -50px;	
        padding-left: 50px;	
     } 
     .PostFile label {
 		  display: inline-block;
  		  padding: .5em .75em;
		  color: #fff;
		  font-size: inherit;
		  line-height: normal;
		  vertical-align: middle;
		  background-color: #00BFFF;
		  cursor: pointer;
		  border: 1px solid #00BFFF;
		  border-radius: .25em;
		  -webkit-transition: background-color 0.2s;
		  transition: background-color 0.2s;
	}

	.PostFile label:hover {
	  background-color: #4682B4;	
	}
	
	.PostFile label:active {
	  background-color: #4682B4;
	}
	
	.PostFile input[type="file"] {
	  position: absolute;
	  width: 1px;
	  height: 1px;
	  padding: 0;
	  margin: -1px;
	  overflow: hidden;
	  clip: rect(0, 0, 0, 0);
	  border: 0;
	}    
  	textarea{
            height:40px;
            width:300px;
            border-radius: 4px;
            font-size: 20px;
        }
        }    
  	#productDesc{
            height:40px;
            width:300px;
            border-radius: 4px;
            font-size: 20px;
        }
    input[type=text]{
            height:44px;
            width:300px;
            font-size: 15px;
        }
    #productPrice{
            height:30px;
            width:150px;
            font-size: 18px;
            position:static;
            top:10px;
            border-radius:4;
            display:in-block;
            margin: .4em 0;
        }
    #category{	width:200px;
    			height:35px;
    }
    .subcategory {
       			width:200px;
    			height:35px;
    }
    #skintypeid{	
    			width:200px;
    			height:35px;
    }
    .keywordform{
    			 float: left;
  			     margin-left: 5%;
                 width:30%;
                 box-sizing: border-box;
                  padding-bottom:20px;
    		}
   	.compKeywordDiv{
   		  float: left;
   		  box-sizing: border-box;
   		  padding-bottom:20px;
    }
    input::-webkit-input-placeholder { color:#00BFFF; };
    </style>
    </head>
	<body>   		
		<div class="main">
            <section class="module" style="padding:100px;">
            <div class="aside col-sm-4 col-md-3" id="aside">
	                <div class="widget">
	                    <h5 class="widget-title font-alt">???????????????</h5>
	                    <ul class="icon-list">
	                    	<li><a href="${contextPath }/admin/main">???????????????</a></li>
		                  	<li><a href="${contextPath }/product/addproduct">????????????</a></li>
		                  	<li><a href="${contextPath }/product/productListForAdmin">???????????????</a></li>
		                  	<li><a href="${contextPath }/admin/adminmemberlist">????????????</a></li>
		                  	<li><a href="${contextPath }/QnABoard/adminNotice">??????????????????</a></li>
	                  	</ul>
	                </div>
               </div> 
      			<div class="container">
                   <div class="row">
                       <div class="col-sm-8 col-sm-offset-2">
                       	   <div class="form-group">
                               <h4 class="font-alt mb-0 bold_font">?????? ?????? ?????????</h4>
                           </div>
                           <div role="tabpanel">
                               <ul class="nav nav-tabs font-alt .MenuList" role="tablist">
                   		           <li class="active"><a href="#Menubars1" data-toggle="tab"><span class="icon-anchor"></span>??????????????????</a></li>
                 				   <li><a href="#Menubars2" data-toggle="tab"><span class="icon-beaker"></span>?????? ??????</a></li>
                                </ul>
      							<div class="tab-content">
						            <div class="tab-pane active" id="Menubars1">
						                <div class="row" id="proType" style="display:in-block">
							                <form id="frmSelectValue" role="form">
							                	<div class="col-sm-6">
							                		<label for="sl1">?????? ?????? ?????????</label> 
							                		<div class="form-group uploadDivForList">
									                    <input type="file" id="inputFile" name="files">
								                    </div>
								                    <div class="form-group fileUploadResultForList">
							                        	<ul>
							                        		<%-- ????????? ??? ?????? ?????? --%>
							                        	</ul>
								                    </div>
							                   	    <div class="form-group">
							                        	<label for="sl1">?????? ??????</label>
							                        	<label class="sr-only" for="name"></label>
							                        	<input class="form-control" type="text" id="productName" name="productname" placeholder="????????? ???????????? ??????*" required="required"/>
	                   								</div>
								                    <div class="form-group">
								                   		<label for="sl1">?????? ?????? ??????</label> 
								                        <label class="sr-only" for="text"></label>
								                        <input class="form-control" type="text" id="productBrand" name="productbrand" placeholder="????????? ?????? ??????" required="required"/>
								                    </div>
								                     <div class="form-group">
								                   		<label for="sl1">?????? ??????</label> 
								                        <label class="sr-only" for="text"></label>
								                        <input class="form-control" type="text" id="productPrice" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" name="productPrice" placeholder="?????? ??????" required="required"/>
								                    </div>
								                    <div class="form-group">
								                    	<label for="sl1">?????? ?????? ??????</label> 
				                                       <div class="form-group">
				                                          <textarea id="productDesc" name="productDesc" style="resize:vertical;" cols="56.5" rows="10"></textarea>
				                                       </div>   
				                                    </div>
				                                 </div>
				                           	   <div class="col-sm-6">
								                    <div class="form-group">
								                        <label for="sl1">?????? ?????? ?????????</label> 
								                        <div class="form-group uploadDivForDesc">
								                        	<input type="file" id="inputFile" name="files">
								                        </div>
								                        <div class="form-group fileUploadResultForDesc">
								                        	<ul>
								                        		<%-- ????????? ??? ?????? ?????? --%>
								                        	</ul>
								                        </div>
								                    </div>
							                   <div class="form-group">
						                           <div class="form-group">
									                    <label>????????????:</label>
									              	    <select class="form-control" id="category" name="productCategory" onchange="selectCategory()">
										              	 	<option value="body">????????????</option>
										              	 	<option value="skin">????????????</option>
										              	 	<option value="cleansing">?????????</option>
										              	 	<option value="hair">????????????</option>
										              	 	<option value="sun">?????????</option>
									                 	</select> 
							                 		</div>
						                        </div>
						               			<div class="form-group">
							                       <label>?????? ????????????:</label> 
							                       <select class="form-control subcategory" id="catebody" name="productSubCategory"> 
								                       <option value="bodywash">????????????</option> 
								                       <option value="bodylotion">????????????</option> 
								                       <option value="bodyoil">????????????</option>
								                       <option value="handcream">????????????/?????????</option>
							                       </select>
							                       <select class="form-control subcategory" id="cateskin" name="productSubCategory" style="display:none"> 
								                       <option value="toner">??????/??????</option> 
								                       <option value="lotion">??????/?????????</option> 
								                       <option value="serum">?????????/??????/??????</option>
								                       <option value="cream">??????</option>
							                       </select>
							                       <select class="form-control subcategory" id="catecleansing" name="productSubCategory" style="display:none"> 
								                       <option value="cleansingform">????????????</option> 
								                       <option value="cleansinggel">????????????</option> 
								                       <option value="cleansingwater">???????????????</option>
								                       <option value="cleansingoil">???????????????</option>
								                       <option value="cleansingtissue">???????????????</option>
							                       </select>
							                       <select class="form-control subcategory" id="catehair" name="productSubCategory" style="display:none"> 
								                       <option value="shampoo">??????</option> 
								                       <option value="rinse">???????????????/??????</option> 
								                       <option value="hairessence">???????????????</option>
							                       </select>
							                       <select class="form-control subcategory" id="catesun" name="productSubCategory" style="display:none"> 
								                       <option value="suncream">?????????</option> 
								                       <option value="sunstick">?????????</option> 
							                       </select>
							                   </div>						                    
							                   <div class="form-group">
								                    <label for="sl1">?????? ??????</label>
								              	    <select class="form-control" id="skintypeid" name="skintypeid">
									              	 	<option value="1">??????</option>
									              	 	<option value="2">??????</option>
									              	 	<option value="3">?????????</option>
								                 	</select> 
							                 	</div>
							                 	<div class="form-group">
								                    <label for="sl1">??????</label><br>
								              	    <input class="form-control" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="productStock" name="productStock" placeholder="?????? ??????" required="required"/>
							                 	</div>
							                 </div>
							                 	</form>
							                 	<button class="btn btn-block btn-round btn-d" id="productsubmit">????????????</button>
							             		<h4 class="font-alt mb-0"></h4>
										 </div><!--  /row -->
								     </div>
											<!-- ?????? ?????? ?????? -->
                    			        <div class="tab-pane" id="Menubars2">                    			      
                        			    	<div class="row" id="proIngre">
		            					    	<div class="col-sm-6 col-sm-10 nonSelectComp" style="overflow:auto; height:500px; border: 1px solid #bcbcbc; ">
		            					    	<label for="keyword" style="padding:left">????????? ?????? ??????</label>
								               <input class="form-control" type="text" name="compKeyword" placeholder="???????????? ???????????????."/>
		            					    	<h4>?????? ??????</h4>
							                    	 <c:forEach items="${componentList }" var="comp">
								                    	 <li style="font-size: 15px;">
									                        <input type="checkbox" class="selectComponent" name="component" value="${comp.comno }">&nbsp;${comp.comname }
									                     </li>
								                     </c:forEach>
                                                </div>
                                                <div class="col-sm-6 col-sm-10 selectedComp" style="overflow:auto; height:500px; border: 1px solid #bcbcbc;">
                                               		<h4>????????? ??????</h4>
                                                	
                                                </div>
                            			    </div><!-- /row -->
                          				</div>
						             <form id="frmSendValue">
						             	<sec:csrfInput/>
						             	<input type="hidden" name="productName" value="">
						             	<input type="hidden" name="productPrice" value="">
						             	<input type="hidden" name="productCategory" value="">
						             	<input type="hidden" name="productSubCategory" value="">
						             	<input type="hidden" name="productBrand" value="">
						             	<input type="hidden" name="productDesc" value="">
						             	<input type="hidden" name="productStock" value="">
						             	<input type="hidden" name="skintypeid" value="">
						             </form>
						         </div>
						     </div>
						 </div><!--/container  -->
                     </div>
                 </div>
             </section>
         </div>  <!-- /main -->
     </body>
<script>
	var ImageID;
	var category=$("#category option:selected").val();
	var subCategory=$("#catebody");
	var InputFileCloneForList=$(".uploadDivForList").clone();
	var InputFileCloneForDesc=$(".uploadDivForDesc").clone();
	var csrfHeaderName = "${_csrf.headerName}";
	var csrfTokenValue = "${_csrf.token}";
	
	
	
    function selectCategory(){
    	category=$("#category option:selected").val();

    	switch(category){
    		case "skin":
    			$(".subcategory").css("display", "none");
    			$("#cateskin").css("display", "block");
    			subCategory=$("#cateskin");
    			break;
    		case "cleansing":
    			$(".subcategory").css("display", "none");
    			$("#catecleansing").css("display", "block");
    			subCategory=$("#catecleansing");
    			break;
    		case "hair":
    			$(".subcategory").css("display", "none");
    			$("#catehair").css("display", "block");
    			subCategory=$("#catehair");
    			break;
    		case "sun":
    			$(".subcategory").css("display", "none");
    			$("#catesun").css("display", "block");
    			subCategory=$("#catesun");
    			break;
    		default:
    			$(".subcategory").css("display", "none");
    			$("#catebody").css("display", "block");
    			subCategory=$("#catebody");
    			break;
    	}
    }
    
    $(".uploadDivForList").on("change", "input[type='file']", function(e){
    	var formData=new FormData();
    	
    	var inputFile=$(this);
    	var files=inputFile[0].files;
    	ImageID=parseInt(1);
    	
    	if(!checkUploadfile(files[0].name, files[0].size)){
    		$(".uploadDivForList").html(InputFileCloneForList.html());
    		return false;
    	} else {
    		formData.append("uploadFiles", files[0]);
    		formData.append("ImageID", ImageID)
    	}
    	
    	$.ajax({
    		type:'post',
    		url:'${contextPath}/fileUploadAjaxAction',
    		processData: false,
    		contentType: false,
    		data: formData,
    		dataType:'json',
    		beforeSend:function(xhr){
		   		 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		   	},
    		success:function(uploadResult, status){
    			console.log(InputFileCloneForList);
    			$(".uploadDivForList").html(InputFileCloneForList.html());
    			showUploadedFiles(uploadResult);
    		}
    	});	
    });
    
    $(".uploadDivForDesc").on("change", "input[type='file']", function(e){
    	var formData=new FormData();
    	
    	var inputFile=$(this);
    	var files=inputFile[0].files;
    	ImageID=parseInt(2);
    	
    	if(!checkUploadfile(files[0].name, files[0].size)){
    		$(".uploadDivForDesc").html(InputFileCloneForDesc.html());
    		return false;
    	} else {
    		formData.append("uploadFiles", files[0]);
    		formData.append("ImageID", ImageID)
    	}
    	
    	$.ajax({
    		type:'post',
    		url:'${contextPath}/fileUploadAjaxAction',
    		processData: false,
    		contentType: false,
    		data: formData,
    		dataType:'json',
    		beforeSend:function(xhr){
		   		 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		   	},
    		success:function(uploadResult, status){
    			$(".uploadDivForDesc").html(InputFileCloneForDesc.html());
    			showUploadedFiles(uploadResult);
    		}
    	});	
    });
    	
    
    function checkUploadfile(fileName, fileSize){
    	var maxSizeAllowed=1048576;
    	var regExpForFileExtention=/(.*)\.(jpg|png|jpeg|gif|bmp)$/i;
    	
    	if(fileSize>=maxSizeAllowed){
    		alert("????????? ????????? ????????? ????????? ??????????????????.");
    		return false;
    	}
    	
    	if(!regExpForFileExtention.test(fileName)){
    		alert("???????????? ????????? ????????? ????????? ??? ??? ????????????.");
    		return false;
    	} else {
    		return true;
    	}
    }
    
    function showUploadedFiles(uploadResult) {
    	if(!uploadResult || uploadResult.length==0){
    		return;
    	} 
    	
    	var fileUploadResult;
    	
    	if(ImageID==1){
    		fileUploadResult = $(".fileUploadResultForList ul");
    	} else {
    		fileUploadResult = $(".fileUploadResultForDesc ul");
    	}
	    
	    var str = "";
	    
	    //???????????? ???????????? ????????? ????????? ?????????
	    $(uploadResult).each(function(i, obj) {
		    var thumbnailFilePath =
		    encodeURIComponent(obj.repoPath + "/" + obj.uploadpath + "/s_" + obj.uuid + "_" + obj.filename);
		
			    str += "<li data-uploadpath='" + obj.uploadpath + "'"
			    + " data-uuid='" + obj.uuid + "'"
			    + " data-filename='" + obj.filename + "' >"
			    + " <img src='${contextPath}/displayThumbnailFile?fileName=" + thumbnailFilePath + "'"
			    + " alt='No Icon' style='height: 250px; width: 250px;'>"
			    + "<br>" + obj.filename
			    + " <span data-filename='" + thumbnailFilePath + "'>[??????]</span>"
			    + "</li>" ;
		    	}
		    ); //end $(uploadResult).each(function(){})
		    fileUploadResult.html(str);
    }
    
    $(".fileUploadResultForList").on("click","span", function(e){
    	 //this: span
    	 var targetFileName = $(this).data("filename");

    	 //span??? ????????? li ????????? ??????
    	 var parentLi = $(this).parent();
    	 //var targetLi = $(this).closest("li");

    	 $.ajax({
	    	 url: '${contextPath}/deleteUploadedFile',
	    	 data: {fileName: targetFileName},
	    	 dataType:'text',
	    	 type: 'post',
	    	 beforeSend:function(xhr){
		   		 xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
		   	 },
	    	 success: function(result){
	    	 	if (result == "SuccessDeletingFile"){
	    	 		alert("????????? ?????????????????????.");
			    	 //????????? ????????? ????????????, ????????? ????????? ????????? ??????????????? HTML ???????????? ???????????????.
			    	 //??? ???, $(this).parent().remove(); ??? $(this).closest("li").remove(); ??? ?????? ????????? ?????? ????????????.
	    	 		parentLi.remove();
	    	 		//targetLi.remove();

		    	 } else {
		    	 	alert("??????: ?????? ?????? ??????.");
		    	 }
    	 	}
    	}); //End $.ajax
    });
    
    $(".fileUploadResultForDesc").on("click","span", function(e){
   	 var targetFileName = $(this).data("filename");
   	 console.log("targetFileName: " + targetFileName);

   	 var parentLi = $(this).parent();

   	 $.ajax({
	    	 url: '${contextPath}/deleteUploadedFile',
	    	 data: {fileName: targetFileName},
	    	 dataType:'text',
	    	 type: 'post',
	    	 success: function(result){
	    	 	if (result == "SuccessDeletingFile"){
	    	 		alert("????????? ?????????????????????.");
			    	parentLi.remove();
		    	 } else {
		    	 	alert("??????: ?????? ?????? ??????.");
		    	 }
   	 	}
   	}); //End $.ajax
   });
    
    //?????? ?????? ??? ???????????? ?????????
    $(document).on("change", "input[type='checkbox']", function(){
    	var selectComp=$(this).closest("li").clone();
    	$(this).closest("li").remove();
   		
    	if($(this).is(":checked")){
    		$(".selectedComp").append(selectComp);
    	} else {
    		$(".nonSelectComp").append(selectComp);	
    	}
    });

       //?????? ????????????
        $("input[name='compKeyword']").keydown(function(key){
         
        var keyword = $("input[name='compKeyword']").val();

        if (window.event.keyCode == 13) {
        	if(keyword.length<1 || keyword==""){
            	alert("???????????? 2?????? ?????? ??????????????????.");
            	return false;
            }

             $.ajax({
                 type:'get',
                 dataType : 'json',
                 url : '${contextPath}/product/searchComponent',
                 data: {keyword : keyword},
                 error: function(error){
                     console.log("search?????? ?????? ??????");
                 },
                 success: function(complist){
                     $(".nonSelectComp li").hide();

                     var compstr="";
                     
                     $(complist).each(function(i, obj) {
                    	 compstr+="<li style='font-size: 15px;'>"
                           +"<input type='checkbox' class='searchedComp' name='component' value='" +obj.comno+ "'>&nbsp;"
                           +obj.comname
                           +"</li>";
           		    	}); 

                     console.log("complist : "+ compstr);
                     $(".nonSelectComp").children("h4").html(compstr);
                 }
             
          });
        }
      });

    
    $("#productsubmit").on("click", function(e){
    	var frmSelectValue=$("#frmSelectValue");
    	
    	if(frmSelectValue.find("input[type='text']").val()=="" || frmSelectValue.find("textarea[name='productDesc']").val()==""){
    		alert("?????? ?????? ????????? ????????? ??????????????????.");
    		return false;
    	} else if($(".fileUploadResultForList ul li").length==0 || $(".fileUploadResultForDesc ul li").length==0){
    		alert("??????????????? ????????? ??????????????????.");
    		return false;
    	} else if($(".selectedComp").find("input[type='checkbox']:checked").length==0){
    		alert("????????? ???????????? ?????????????????????.");
    		return false;
    	}
    		
    	var frmSendValue=$("#frmSendValue");
    	var strInputHidden;
    	var compList;

    	$("input[type='checkbox']:checked").each(function(i){
    		compList +=" <input type='hidden' name='compList["+i+"].comno' value='"+ $(this).val() +"'>";
    	});
    	
    	
    	var productName=$("#productName").val();
    	var productBrand=$("#productBrand").val();
    	var productDesc=$("#productDesc").val();
    	var productPrice=$("#productPrice").val();
    	var productSubCategory=$(subCategory, "option:selected").val();
    	var productStock=$("#productStock").val();
    	var skintypeid=$("#skintypeid option:selected").val();
    	
    	
    	frmSendValue.find("input[name='productName']").val(productName);
    	frmSendValue.find("input[name='productPrice']").val(productPrice);
    	frmSendValue.find("input[name='productCategory']").val(category);
    	frmSendValue.find("input[name='productSubCategory']").val(productSubCategory);
    	frmSendValue.find("input[name='productBrand']").val(productBrand);
    	frmSendValue.find("input[name='productDesc']").val(productDesc);
    	frmSendValue.find("input[name='productStock']").val(productStock);
    	frmSendValue.find("input[name='skintypeid']").val(skintypeid);
    	
    	$(".fileUploadResultForList ul li").each(function(i, obj){
    		var objLi=$(obj);
    		console.log(objLi);
    		
	    	strInputHidden
	       	 +=" <input type='hidden' name='attachFileList[0].uuid' value='"+objLi.data("uuid")+"'>"
	       	 + " <input type='hidden' name='attachFileList[0].uploadpath' value='"+objLi.data("uploadpath")+"'>"
	       	 + " <input type='hidden' name='attachFileList[0].filename' value='"+objLi.data("filename")+"'>";
	       	 
    	});
    	
    	$(".fileUploadResultForDesc ul li").each(function(i, obj){
    		var objLi=$(obj);
    		console.log(objLi);
    		
	    	strInputHidden
	       	 +=" <input type='hidden' name='attachFileList[1].uuid' value='"+objLi.data("uuid")+"'>"
	       	 + " <input type='hidden' name='attachFileList[1].uploadpath' value='"+objLi.data("uploadpath")+"'>"
	       	 + " <input type='hidden' name='attachFileList[1].filename' value='"+objLi.data("filename")+"'>";

    	});
    	
    	frmSendValue.append(strInputHidden);
    	frmSendValue.append(compList);
    	frmSendValue.attr("method", "post");
    	frmSendValue.attr("action", "${contextPath}/product/addproduct");
    	frmSendValue.submit();
    });

   
     
	
	</script>