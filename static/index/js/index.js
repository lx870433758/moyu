$(function() {
  var win_width = $(window).width();
    var win_height = $(window).height();
    var loadingimg=$('.loadingimg').width();
    var w1th=$(window).width();

    $('.inb-tf').css('top',(win_height-$('.inb-tf').height())/2);
    var lodleft=(w1th-loadingimg)/2;
    var lodtop=($(window).height()-$('.loadingimg').height())/2;                       
    $('.spinner').css('left',lodleft);
    $('.spinner').css('top',lodtop);
    console.log(win_width);
    //1200
     if (win_width > 1200) {
         //$('#contBox').fullpage.destroy();
           $('#contBox').fullpage({
            css3: true,
            //scrollingSpeed:900,
            easing: "swing",
            //anchors: ['page1', 'page2' , 'page3', 'page4','page5','page6','page7','page8'],
            // autoScrolling:fullpage_autoScrolling,
            // navigation: fullpage_autoScrolling,
            // navigationTooltips:qarr,
            navigation: true,
            afterRender: function() {

            },
            onLeave: function(index, nextIndex, direction) {


                if (nextIndex == 1) {
                    $(".headBox").addClass("headBox_an");
                    $(".section1").addClass("section1_an");
                }
                if (nextIndex == 2) {
                    $(".section2").addClass("section2_an");
                }
                if (nextIndex == 3) {
                    $(".section3").addClass("section3_an");
                }
                if (nextIndex == 4) {
                    $(".section4").addClass("section4_an");
                }
                if (nextIndex == 5) {
                    $(".section5").addClass("section5_an");
                }
                if (nextIndex == 6) {
                    $(".section6").addClass("section6_an");
                }
                if (nextIndex == 7) {
                    $(".section7").addClass("section7_an");
                }


            },
            afterLoad: function(anchorLink, index, slideIndex) {
                if (index != 1) {
                    $(".headBox").removeClass("headBox_an");
                    $(".section1").removeClass("section1_an");

                }


                if (index != 2) {
                    $(".section2").removeClass("section2_an");
                }
                if (index != 3) {
                    $(".section3").removeClass("section3_an");
                }
                if (index != 4) {
                    $(".section4").removeClass("section4_an");

                }
                if (index != 5) {
                    $(".section5").removeClass("section5_an");

                }
                if (index != 6) {
                    $(".section6").removeClass("section6_an");

                }
                if (index != 7) {
                    $(".section7").removeClass("section7_an");

                }

            }
        });

        var aboutswiper1 = new Swiper('.about-swiper', {
              loop: true,
              effect : 'fade',
        });

        var aboutswiper2 = new Swiper('.about2-swiper', {
            loop: true,
           autoplay: {
            delay: 5000,
            stopOnLastSlide: false,
            disableOnInteraction: true,
            },
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            on: {
                slideChange: function() {
                    aboutswiper1.slideTo(this.activeIndex, 1000, false);
                },
            },
        });








        // $(".inmg1").css("height", win_height);

     
    }



    if (navigator.appName == "Microsoft Internet Explorer" && parseInt(navigator.appVersion.split(";")[1].replace(/[ ]/g, "").replace("MSIE", "")) <= 9) {
        alert("您的浏览器版本过低，请下载IE10及以上版本");
    } else {
        $(".spinner").css('opacity',1);
                setTimeout(function() {
                    $(".loading").stop(false,true).slideUp(500);
                }, 1500);
      
    }
    var wow = new WOW({
    boxClass: 'wow',
    animateClass: 'animated',
    offset: 0,
    mobile: true,
    live: true
    });
    wow.init();
  
    var pale = ($('.about-banner1').width() - 1200) / 2;
    $('.about-banner2').css('left', pale);
    var btn = true;
    $(".nav_but_box").click(function() {
        $(this).parent().toggleClass("phone_nav_one")
        $("body").toggleClass('hided');
        if (btn) {
            $(".phone_nav .nav_but").css("background", "none");
            btn = false;
        } else {
            $(".phone_nav .nav_but").css("background", "#333");
            btn = true;
        }
    }) //手机导航
    $(".nav_main b").click(function() {
        $(this).parent().toggleClass("b_one")
            .siblings().removeClass("b_one");
    }) //手机二级导航
    // $(".app_ss").click(function() {
    //     $(this).parent().toggleClass("resch_one")
    // }) //搜索按钮
    // $(".main .dxcp .sfq li").mouseover(function() {
    //     var width = $(window).width();
    //     if (width > 1183) {
    //         $(".main .dxcp .sfq li").removeClass("big-da");
    //         $(this).addClass("big-da");
    //     }
    // });
    $(".a_rlzydiv_c dd").eq(0).find(".div").addClass("activerc");
    $(".a_rlzydiv_c dd").eq(0).find(".div1").slideDown(500);
    $(".a_rlzydiv_c dd").click(function() {
        $(".a_rlzydiv_c dd .div").removeClass("activerc");
        $(".a_rlzydiv_c dd .div1").slideUp(500);
        var dis = $(this).find(".div1").css("display");
        var dlshow = $(this).find(".div1").length;
        if (dlshow > 0 && dis == "none") {
            $(this).find(".div").addClass("activerc");
            $(this).find(".div1").slideDown(500);
        }
    });


  //     $(".lx-ab-ul li a img").hover(function(){
  //   $(this).removeClass('gray');
  //   },function(){
  //     $(this).addClass('gray');
  // });
  $(window).resize(function() {
     $('.inb-tf').css('top',($(window).height()-$('.inb-tf').height())/2);
     $('.about-banner2').css('left', ($('.about-banner1').width() - 1200)/2);

});

    $(window).scroll(function() {

        if ($(".phone_nav").css("position") == "fixed") {

            if ($(window).scrollTop() > 65) {
                $(".phone_nav").css("box-shadow", "2px 2px  #ccc");
            } else {
                $(".phone_nav").css("box-shadow", "none");
            }
            if ($(window).scrollTop() >= 940) {
                $("body").addClass("body_nav");;
            } else {
                $("body").removeClass("body_nav");
            }
        }


    });


    $(".top-nav li").hover(function() {
        // $(this).find(".a_nav").addClass("active");
        $(this).find("ul").stop(false, true).slideDown(500);
    }, function() {
        // $(this).find(".a_nav").removeClass("active");
        $(this).find("ul").stop(false, true).slideUp(500);
    });
    $('.gallery').each(function() { // the containers for all your galleries
        $(this).magnificPopup({
            delegate: 'a', // the selector for gallery item
            type: 'image',
            gallery: {
                enabled: true
            }
        });
    });
    var bannerswiper = new Swiper('.index-swiper', {
        loop: true,
         autoplay: {
            delay: 7000,
            stopOnLastSlide: false,
            disableOnInteraction: true,
            },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

    });


    var zuping = new Swiper('.zuoping-swiper', {
        slidesPerView: 2,
        spaceBetween: 30,
        slidesPerGroup: 2,
        loop: true,
        loopFillGroupWithBlank: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },



    });

    var phabswiper = new Swiper('.phab-swiper', {
        loop: true,
        autoplay: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },


    });

    var abbo = new Swiper('.abbo-swiper', {
        loop: true,
        autoplay: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

    });


    $(".fudong2").click(function() {
        $.fn.fullpage.moveTo(7, 1000);
    });
     $(".fudong0").click(function() {
        $.fn.fullpage.moveTo(1, 1000);
        
    });
    $(".fudong00").click(function() {
        $("html,body").animate({scrollTop:0}, 500);
    });
    $(".a_zxlmenu .a_zxlmenu_t").click(function() {
        var dis = $(this).parent().find(".a_zxlmenu_c").css("display");
        if (dis == "none") {
            $(this).parent().find(".a_zxlmenu_c").stop(false, true).slideDown(500);
        } else {
            $(this).parent().find(".a_zxlmenu_c").slideUp(500);
        }
    });
    $(".a_zxlmenu_c li").click(function() {
        var dis = $(this).parent().find(".a_zxlmenu_c1").css("display");
        if (dis == "none") {
            $(this).parent().find(".a_zxlmenu_c1").stop(false, true).slideDown(500);
        } else {
            $(this).parent().find(".a_zxlmenu_c1").slideUp(500);
        }
    });




   

})