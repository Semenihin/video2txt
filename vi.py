import cv2 
vidcap = cv2.VideoCapture('/home/eugene/Videos/TDOL.mp4') 
success,image = vidcap.read() 
n = 0
s=0
success = True
#length = int(vidcap.get(cv2.cv.CV_CAP_PROP_FRAME_COUNT))
#fps = vidcap.get(cv2.cv.CV_CAP_PROP_FPS)
length = int(vidcap.get(cv2.CAP_PROP_FRAME_COUNT))
fps = vidcap.get(cv2.CAP_PROP_FPS)
f=int(length/fps/2)
#print(length)
#while success:
#
#    cv2.imwrite("/home/eugene/Pictures/test/frame%d.jpg" % count, image)  # save frame as JPEG file 
#    success,image = vidcap.read() 
#    print 'Read a new frame: ', success 
#    count += 1 
while n<length:
	if s==f:
		if success:
			cv2.imwrite("/home/eugene/Pictures/test/k%d.jpg" % n, image)  # save frame as JPEG file 
			success,image = vidcap.read()
			s=0
	success,image = vidcap.read()
	n+=1
	s+=1
