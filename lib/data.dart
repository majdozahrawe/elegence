import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({required this.imageAssetPath,required this.title,required this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //1
  sliderModel.setDesc("Discover a Luxury Fashion in eazy way");
  sliderModel.setTitle("Elegence");
  sliderModel.setImageAssetPath("assets/images/splash.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //2
  sliderModel.setDesc("Our App plan is to collect international brands and display them in a simplified style");
  sliderModel.setTitle("Elegence");
  sliderModel.setImageAssetPath("assets/images/splash.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  //3
  sliderModel.setDesc("buy a product you want with credit card");
  sliderModel.setTitle("Elegence");
  sliderModel.setImageAssetPath("assets/images/splash.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(desc: '', title: '', imageAssetPath: '');

  return slides;
}