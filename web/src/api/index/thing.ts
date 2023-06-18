// 权限问题后期增加
import { get, post } from '/@/utils/http/axios';
import { UserState } from '/@/store/modules/user/types';
// import axios from 'axios';
enum URL {
    list = '/myapp/index/thing/list',
    detail = '/myapp/index/thing/detail',
    addWishUser = '/myapp/index/thing/addWishUser',
    addCollectUser = '/myapp/index/thing/addCollectUser',
    getCollectThingList = '/myapp/index/thing/getCollectThingList',
    getWishThingList = '/myapp/index/thing/getWishThingList',
    removeCollectUser = '/myapp/index/thing/removeCollectUser',
    removeWishUser = '/myapp/index/thing/removeWishUser'
}

const listApi = async (params: any) => get<any>({ url: URL.list, params: params, data: {}, headers: {} });
const detailApi = async (params: any) => get<any>({ url: URL.detail, params: params, headers: {} });
const addWishUserApi = async (params: any) => post<any>({ url: URL.addWishUser, params: params, headers: {} });
const addCollectUserApi = async (params: any) => post<any>({ url: URL.addCollectUser, params: params, headers: {} });
const getCollectThingListApi = async (params: any) => get<any>({ url: URL.getCollectThingList, params: params, headers: {} });
const getWishThingListApi = async (params: any) => get<any>({ url: URL.getWishThingList, params: params, headers: {} });

const removeCollectUserApi = async (params: any) => post<any>({ url: URL.removeCollectUser, params: params, headers: {} });
const removeWishUserApi = async (params: any) => post<any>({ url: URL.removeWishUser, params: params, headers: {} });


export { listApi, detailApi, addWishUserApi,addCollectUserApi, getCollectThingListApi,
    getWishThingListApi, removeCollectUserApi, removeWishUserApi };
